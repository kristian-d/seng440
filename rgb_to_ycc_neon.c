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
  register uint8x8_t y_rcoeff = vdup_n_u8(66); // 0.257 x 2^8 = 65.792
  register uint8x8_t y_gcoeff = vdup_n_u8(129); // 0.504 x 2^8 = 129.024
  register uint8x8_t y_bcoeff = vdup_n_u8(25); // 0.098 x 2^8 = 25.088
  register uint8x8_t c_rcoeff = vreinterpret_u8_u16(vdup_n_u16(28710)); // LOW 8: 0.148 x 2^8 = 37.888, HIGH 8: 0.439 x 2^8 = 112.384
  register uint8x8_t c_gcoeff = vreinterpret_u8_u16(vdup_n_u16(24138)); // LOW 8: 0.291 x 2^8 = 74.496, HIGH 8: 0.368 x 2^8 = 94.208
  register uint8x8_t c_bcoeff = vreinterpret_u8_u16(vdup_n_u16(4720));  // LOW 8: 0.439 x 2^8 = 112.384, HIGH 8: 0.071 x 2^8 = 18.176
  register int16x8_t c_rcoeffsign = vreinterpretq_s16_s32(vmovq_n_s32(131071)); // LOW 8: -1, HIGH 8: 1
  register int16x8_t c_gcoeffsign = vmovq_n_s16(-1); // LOW 8: -1, HIGH 8: -1
  register int16x8_t c_bcoeffsign = vreinterpretq_s16_s32(vmovq_n_s32(-65535)); // LOW 8: 1, HIGH 8: -1

  register uint8x8_t y_scalar = vdup_n_u8(16);
  register int8x8_t c_scalar = vdup_n_s8(128);

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

      // temporary vector for y and c values; initialize with 2^7 to handle simple rounding for later right bitshift
      y_acc = vmovq_n_u16(128);
      c_acc = vmovq_n_s16(128);

      // vector multiplication and accumulation for y
      y_acc = vmlal_u8(y_acc, intlv_rgb.val[0], y_rcoeff);
      y_acc = vmlal_u8(y_acc, intlv_rgb.val[1], y_gcoeff);
      y_acc = vmlal_u8(y_acc, intlv_rgb.val[2], y_bcoeff);

      // duplicate every second value, throwing away the unnecessary ones
      intlv_rgb.val[0] = vsri_n_u8(intlv_rgb.val[0], intlv_rgb.val[0], 8);
      intlv_rgb.val[1] = vsri_n_u8(intlv_rgb.val[1], intlv_rgb.val[1], 8);
      intlv_rgb.val[2] = vsri_n_u8(intlv_rgb.val[2], intlv_rgb.val[2], 8);

      // vector multiplication and accumulation for chroma values
      c_acc = vmlaq_s16(c_acc, vreinterpretq_s16_u16(vmull_u8(intlv_rgb.val[0], c_rcoeff)), c_rcoeffsign);
      c_acc = vmlaq_s16(c_acc, vreinterpretq_s16_u16(vmull_u8(intlv_rgb.val[1], c_gcoeff)), c_gcoeffsign);
      c_acc = vmlaq_s16(c_acc, vreinterpretq_s16_u16(vmull_u8(intlv_rgb.val[2], c_bcoeff)), c_bcoeffsign);

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
}
