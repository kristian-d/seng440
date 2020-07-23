#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include "rgb_to_ycc.h"
#include "arm_neon.h"

ycc_image_t *rgb_to_ycc(uint8_t *img, int width, int height) {
  // set up YCC image space and metadata
  uint8_t *y  = (uint8_t *)malloc(sizeof(uint8_t)*height*width);   // Y values are calculated 1:1
  uint8_t *cb = (uint8_t *)malloc(sizeof(uint8_t)*height*width/4); // Cb values are calculated downsampled 1:4
  uint8_t *cr = (uint8_t *)malloc(sizeof(uint8_t)*height*width/4); // Cr values are calculated downsampled 1:4
  ycc_image_t *ycc_image = (ycc_image_t *)malloc(sizeof(ycc_image_t));
  ycc_image->y  = y;
  ycc_image->cb = cb;
  ycc_image->cr = cr;
  ycc_image->height = height;
  ycc_image->width  = width;
  ycc_image->y_bytes = height*width;
  ycc_image->cb_bytes = height*width/4;
  ycc_image->cr_bytes = height*width/4;
  ycc_image->total_bytes = ycc_image->y_bytes + ycc_image->cb_bytes + ycc_image->cr_bytes;

  // coefficents - 8-bits each
  uint8x8_t y_rcoeff = vdup_n_u8(66); // 0.257 x 2^8 = 65.792
  uint8x8_t y_gcoeff = vdup_n_u8(129); // 0.504 x 2^8 = 129.024
  uint8x8_t y_bcoeff = vdup_n_u8(25); // 0.098 x 2^8 = 25.088
  uint8x8_t c_rcoeff = vreinterpret_u8_u16(vdup_n_u16(28710)); // LOW 8: -0.148 x 2^8 = -37.888, HIGH 8: 0.439 x 2^8 = 112.384
  uint8x8_t c_gcoeff = vreinterpret_u8_u16(vdup_n_u16(24138)); // LOW 8: -0.291 x 2^8 = -74.496, HIGH 8: -0.368 x 2^8 = -94.208
  uint8x8_t c_bcoeff = vreinterpret_u8_u16(vdup_n_u16(4720));  // LOW 8: 0.439 x 2^8 = 112.384, HIGH 8: -0.071 x 2^8 = -18.176
  int16x8_t c_rcoeffsign = vreinterpret_s16_s32(vmovq_n_s32(131071));
  int16x8_t c_gcoeffsign = vmovq_n_s16(-1);
  int16x8_t c_bcoeffsign = vreinterpret_s16_s32(vmovq_n_s32(-65535));

  uint8x8_t y_scalar = vdup_n_u8(16);
  int8x8_t c_scalar = vdup_n_s8(128);

  int y_index = 0, c_index = 0;
  int physical_width = width*3;
  int img_bytes = height*physical_width;
  int limit;
  uint16x8_t y_acc;
  int16x8_t c_acc;
  uint8x8_t y_final, c_final;
  uint8x8x3_t intlv_rgb;
  for (int pixel_index = 0; pixel_index < img_bytes;) {
    for(limit = pixel_index + physical_width; pixel_index < limit; pixel_index += 24) { // Loops over one row.
      // load the rgb values from memory
      intlv_rgb = vld3_u8(img + pixel_index);

      // temporary vector for y and c values
      y_acc = vmovq_n_u16(128);
      c_acc = vmovq_n_s16(128);

      // vector multiplication and accumulation for y
      y_acc = vmlal_u8(y_acc, intlv_rgb.val[0], y_rcoeff);
      y_acc = vmlal_u8(y_acc, intlv_rgb.val[1], y_gcoeff);
      y_acc = vmlal_u8(y_acc, intlv_rgb.val[2], y_bcoeff);

      // duplicate every second value
      intlv_rgb.val[0] = vsri_n_u8(intlv_rgb.val[0], intlv_rgb.val[0], 8);
      intlv_rgb.val[1] = vsri_n_u8(intlv_rgb.val[1], intlv_rgb.val[1], 8);
      intlv_rgb.val[2] = vsri_n_u8(intlv_rgb.val[2], intlv_rgb.val[2], 8);

      // vector multiplication and accumulation for cb and cr

      c_acc = vmlaq_u16(c_acc, vreinterpret_s8_u8(vmull_u8(intlv_rgb.val[0], c_rcoeff)), c_rcoeffsign));
      c_acc = vmlaq_u16(c_acc, vreinterpret_s8_u8(vmull_u8(intlv_rgb.val[1], c_gcoeff)), c_gcoeffsign));
      c_acc = vmlaq_u16(c_acc, vreinterpret_s8_u8(vmull_u8(intlv_rgb.val[2], c_bcoeff)), c_bcoeffsign));

      // shift all eight 16-bit values right 8 bits and narrow vector to obtain eight 8-bit values, then add scalar
      y_final = vadd_u8(vshrn_n_u16(y_acc, 8), y_scalar);
      c_final = vreinterpret_u8_s8(vadd_s8(vshrn_n_s16(c_acc, 8), c_scalar)); // additionally, cast signed integers to unsigned integers

      // store results
      vst1_u8(y + y_index, y_final);
      y_index += 8;
      vst1_lane_u8(cb + c_index,   c_final, 0);
      vst1_lane_u8(cr + c_index++, c_final, 1);
      vst1_lane_u8(cb + c_index,   c_final, 2);
      vst1_lane_u8(cr + c_index++, c_final, 3);
      vst1_lane_u8(cb + c_index,   c_final, 4);
      vst1_lane_u8(cr + c_index++, c_final, 5);
      vst1_lane_u8(cb + c_index,   c_final, 6);
      vst1_lane_u8(cr + c_index++, c_final, 7);
    }

    for(limit = pixel_index + physical_width; pixel_index < limit; pixel_index += 24) { // Loops over next row.
      // Load the rgb values from memory.
      intlv_rgb = vld3_u8(img + pixel_index);

      // temporary vector for y
      y_acc = vmovq_n_u16(128);

      // vector multiplication and accumulation
      y_acc = vmlal_u8(y_acc, intlv_rgb.val[0], y_rcoeff);
      y_acc = vmlal_u8(y_acc, intlv_rgb.val[1], y_gcoeff);
      y_acc = vmlal_u8(y_acc, intlv_rgb.val[2], y_bcoeff);

      // shift 16-bit value right 8 bits to obtain 8-bit values
      y_final = vadd_u8(vshrn_n_u16(y_acc, 8), y_scalar);

      // store result
      vst1_u8(y + y_index, y_final);
      y_index += 8;
    }
  }

  return ycc_image;

  // Both RGB->YCC conversion and downsampling of Cb and Cr values occurs in this loop.
  // To eliminate the need for conditionals to check if Cb/Cr values should be sampled
  // based on the current row index, there are two inner loops.
  // The first inner loop grabs the row where Cb/Cr values are sampled from, while
  // the following inner loop grabs the row just below it where Cb/Cr values are not sampled from.
  // Cb and Cr sampling ratio is 1:4 pixels in the following pattern ("x" denotes a pixel where
  // Cb and Cr must be sampled, while "o" denotes the opposite):
  // ... | x | o | x | o | x | o | ...     <- ... first inner loop converts RGB -> YCC for this row of pixels
  // ... | o | o | o | o | o | o | ...     <- second inner loop converts RGB -> Y for this row of pixels
  // ... | x | o | x | o | x | o | ...     <- (next iteration) first inner loop
  // ... | o | o | o | o | o | o | ...     <- second inner loop ...
  /*
  int img_bytes = height*width*3;
  int physical_width = width*3; // due to each pixel being 3 bytes (R, G, B)
  int limit;
  int y_index = 0, c_index = 0;
  uint8_t r, g, b;
  for (int pixel_index = 0; pixel_index < img_bytes;) { // RGB -> YCC
    // converts RGB -> YCC for row above
    for (limit = pixel_index + physical_width; pixel_index < limit; pixel_index += 3) {
      // calculate Y, Cb, and Cr values for first pixel
      r = img[pixel_index];
      g = img[pixel_index + 1];
      b = img[pixel_index + 2];

      // RGB values are 8 bits each.
      // The ALU can output a 32-bit value.

      // original coefficients are 0.257, 0.504, 0.098 which can be represented with [-2^0 = -1, 2^0 = 1]
      // we can allow for a 24-bit representation; with 24-bit representation, scale factor is 2^24, leaving 8 bits for each RGB multiplication, none for sign (none needed), and none for addition (buffer for addition not needed, as seen below)
      // range of values the sum in brackets can reach is [0 + 0 + 0 = 0, 1099494720 + 2156207580 + 419262585 + 8388608 = 3683353887], both of which can be represented by 32 bits, therefore no bits are needed as a buffer for addition
      // the sum in brackets is immediately scaled down to an 8-bit value so it can be packaged into a uint8_t
      y[y_index++] = 16 + ((4311744*r + 8455716*g + 1644167*b + (1 << 23)) >> 24); // y can be written to consecutively, so ++ is ok

      // original coefficients are -0.148, -0.291, 0.439 which can be represented with [-2^-1 = -0.5, 2^-1 = 0.5]
      // we can allow for a 23-bit representation; with 23-bit representation, scale factor is 2^24, leaving 8 bits for each RGB multiplication, 1 bit for sign, and none for addition (buffer for addition not needed, as seen below)
      // range of values sum in brackets can reach is [-633172140 - 1244953350 = -1878125490, 0 + 0 + 7365198 + 8388608 = 15753806], both of which can be represented by 32 bits, therefore no bits are needed as a buffer for addition
      // the sum in brackets is immediately scaled down to an 8-bit value so it can be packaged into a uint8_t
      cb[c_index] = 128 + ((-2483028*r + -4882170*g + 7365198*b + (1 << 23)) >> 24);

      // original coefficients are 0.439, -0.368, -0.071 which can be represented with [-2^-1 = -0.5, 2^-1 = 0.5]
      // we can allow for a 23-bit representation; with 23-bit representation, scale factor is 2^24, leaving 8 bits for each RGB multiplication, 1 bit for sign, and none for addition (buffer for addition not needed, as seen below)
      // range of values sum in brackets can reach is [0 - 1574373825 - 303751496 = -1878125321, 1878125490 - 0 - 0 + 8388608 = 1886514098], both of which can be represented by 32 bits, therefore no bits are needed as a buffer for addition
      // the sum in brackets is immediately scaled down to an 8-bit value so it can be packaged into a uint8_t
      cr[c_index++] = 128 + ((7365198*r + -6174015*g + -1191182*b + (1 << 23)) >> 24); // cb and cr can be written to consecutively, so ++ is ok

      // calculate Y value for second pixel
      pixel_index += 3;

      // original coefficients are 0.257, 0.504, 0.098 which can be represented with [-2^0 = -1, 2^0 = 1]
      // we can allow for a 24-bit representation; with 24-bit representation, scale factor is 2^24, leaving 8 bits for each RGB multiplication, none for sign (none needed), and none for addition (buffer for addition not needed, as seen below)
      // range of values the sum in brackets can reach is [0 + 0 + 0 = 0, 1099494720 + 2156207580 + 419262585 + 8388608 = 3683353887], both of which can be represented by 32 bits, therefore no bits are needed as a buffer for addition
      // the sum in brackets is immediately scaled down to an 8-bit value so it can be packaged into a uint8_t
      y[y_index++] = 16 + ((4311744*img[pixel_index] + 8455716*img[pixel_index + 1] + 1644167*img[pixel_index + 2] + (1 << 23)) >> 24); // y can be written to consecutively, so ++ is ok
    }

    // converts RGB -> Y for row below
    for (limit = pixel_index + physical_width; pixel_index < limit; pixel_index += 3) {
      // calculate Y value for pixel

      // original coefficients are 0.257, 0.504, 0.098 which can be represented with [-2^0 = -1, 2^0 = 1]
      // we can allow for a 24-bit representation; with 24-bit representation, scale factor is 2^24, leaving 8 bits for each RGB multiplication, none for sign (none needed), and none for addition (buffer for addition not needed, as seen below)
      // range of values the sum in brackets can reach is [0 + 0 + 0 = 0, 1099494720 + 2156207580 + 419262585 + 8388608 = 3683353887], both of which can be represented by 32 bits, therefore no bits are needed as a buffer for addition
      // the sum in brackets is immediately scaled down to an 8-bit value so it can be packaged into a uint8_t
      y[y_index++] = 16 + ((4311744*img[pixel_index] + 8455716*img[pixel_index + 1] + 1644167*img[pixel_index + 2] + (1 << 23)) >> 24); // y can be written to consecutively, so ++ is ok    }
    }
  }
  */
}
