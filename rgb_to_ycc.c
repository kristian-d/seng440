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

  // CSC Coefficents - 8-bits each
  // NOTE: some of these should actually be not unsigned.
  uint8x8_t y_rcoeff = vdup_n_u8();
  uint8x8_t y_gcoeff = vdup_n_u8();
  uint8x8_t y_bcoeff = vdup_n_u8();
  uint8x8_t cr_rcoeff = vdup_n_u8();
  uint8x8_t cr_gcoeff = vdup_n_u8();
  uint8x8_t cr_bcoeff = vdup_n_u8();
  uint8x8_t cb_rcoeff = vdup_n_u8();
  uint8x8_t cb_gcoeff = vdup_n_u8();
  uint8x8_t cb_bcoeff = vdup_n_u8();

  uint8x16_t r, g, b;
  uint8x16x3_t intlv_rgb;
  int num16x8 = width/3; // Number of 16 8-bit arrays per row
  int img_index = 0; // Used for loading rbg values into NEON struct.
  for (int row_index = 0; row_index < height; row_index+=2) {
    for(int i = 0; i < num16x8; i++) { // Loops over one row.
      // Load the rgb values from memory.
      intlv_rgb = vld3q_u8(img+3*16*img_index);
      img_index++;

      // Temp vectors for y, cr, cb
      uint16x8_t y_acc
      uint16x8_t cr_acc, cb_acc; // maybe uint16x4 depending on how we do downsampling.
 
      // Calculations - need to still add 16, 128, 128
      // NOTE: This is not doing any downsampling at the moment.
      //       One method is to do the full calculations and then discard every second element.
      //       Otherwise we may be able to split intvl_rgb.val[1 or 2] into two vectors and then only do operations on the second vector?
      y_acc = vmull_u8(intvl_rgb.val[0], y_rcoeff);
      y_acc = vmlal_u8(y_acc, intvl_rgb.val[1], y_gcoeff);
      y_acc = vmlal_u8(y_acc, intvl_rgb.val[2], y_bcoeff);
      cr_acc = vmull_u8(intvl_rgb.val[0], cr_rcoeff);
      cr_acc = vmlal_u8(cr_acc, intvl_rgb.val[1], cr_gcoeff);
      cr_acc = vmlal_u8(cr_acc, intvl_rgb.val[2], cr_bcoeff);
      cb_acc = vmull_u8(intvl_rgb.val[0], cb_rcoeff);
      cb_acc = vmlal_u8(cb_acc, intvl_rgb.val[1], cb_gcoeff);
      cb_acc = vmlal_u8(cb_acc, intvl_rgb.val[2], cb_bcoeff);

      // Shift 16-bit vectors to 8-bits
      // vshrn_n_u16()


      // Store in memory
      // either vst1_u8 or vst1q_u8

      /* OLD CALCULATIONS
      y_neon[j] = 16 + ((4311744*r[j] + 8455716*g[j] + 1644167*b[j] + (1 << 23)) >> 24);
      cb_neon[c_neon_index] = 128 + ((-2483028*r[j] + -4882170*g[j] + 7365198*b[j] + (1 << 23)) >> 24);
      cr_neon[c_neon_index++] = 128 + ((7365198*r[j] + -6174015*g[j] + -1191182*b[j] + (1 << 23)) >> 24);
        
      y_neon[j+1] = 16 + ((4311744*r[j+1] + 8455716*g[j+1] + 1644167*b[j+1] + (1 << 23)) >> 24); */
  
      // Store NEON vectors into memory
      /* OLD STORE CODE
      vst1q_u8((uint8_t *)y+16*img_index, y_neon);
      vst1_u8((uint8_t *)cb+8*img_index, cb_neon);
      vst1_u8((uint8_t *)cr+8*img_index, cr_neon); */
    }

    for(int i = 0; i < num16x8; i++) { // Loops over next row.
      // Load the rgb values from memory.
      intlv_rgb = vld3q_u8(img+3*16*img_index);
      img_index++;

      // Temp vectors for y, cr, cb
      uint16x8_t y_acc
   
      // Calcuations - still need to add 16
      y_acc = vmull_u8(intvl_rgb.val[0], y_rcoeff);
      y_acc = vmlal_u8(y_acc, intvl_rgb.val[1], y_gcoeff);
      y_acc = vmlal_u8(y_acc, intvl_rgb.val[2], y_bcoeff);
      
      // Shift 16-bit vectors to 8-bits
      // vshrn_n_u16()

      // Store in memory
      // either vst1_u8 or vst1q_u8
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
