#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include "rgb_to_ycc.h"

ycc_image_t *rgb_to_ycc(uint8_t *img, int width, int height) {
  // set up YCC image space and metadata
  uint8_t *y  = (uint8_t *)malloc(sizeof(uint8_t)*height*width);   // Y values are calculated 4:4:4
  uint8_t *cb = (uint8_t *)malloc(sizeof(uint8_t)*height*width/4); // Cb values are calculated downsampled 4:2:0
  uint8_t *cr = (uint8_t *)malloc(sizeof(uint8_t)*height*width/4); // Cr values are calculated downsampled 4:2:0
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
  int img_bytes = height*width*3;
  int physical_width = width*3; // due to each pixel being 3 bytes (R, G, B)
  int limit;
  int y_index = 0, c_index = 0;
  uint32_t rgb; // holds 3 8-bit rgb values
  uint32_t ycc; // holds 3 8-bit y, cr, cb values
  for (int pixel_index = 0; pixel_index < img_bytes;) { // RGB -> YCC
    // converts RGB -> YCC for row above
    for (limit = pixel_index + physical_width; pixel_index < limit; pixel_index += 3) {
      /* First Pixel */

      // read 3 8-bit rgb values from memory into 32-bits
      rgb = (img[pixel_index] << 24) | (img[pixel_index + 1] << 16) | (img[pixel_index + 2] << 8);

      // assembly inlining to custom hardware instruction
      __asm__ __volatile__ (
        "rgb_to_ycc\t%0, %1\n"
        : "=r" (ycc)
        : "r" (rgb)
      );

      y[y_index++] = ycc>>24;
      cb[c_index] = ycc>>16;
      cr[c_index++] = ycc>>8;
      pixel_index += 3;

      /* Second Pixel */      

      // read 3 8-bit rgb values from memory into 32-bits
      rgb = (img[pixel_index] << 24) | (img[pixel_index + 1] << 16) | (img[pixel_index + 2] << 8);

      // assembly inlining to custom hardware instruction
      __asm__ __volatile__ (
        "rgb_to_ycc\t%0, %1\n"
        : "=r" (ycc)
        : "r" (rgb)
      );

      y[y_index++] = ycc>>24;
    }

    // converts RGB -> Y for row below
    for (limit = pixel_index + physical_width; pixel_index < limit; pixel_index += 3) {
      // calculate Y value for pixel

      // read 3 8-bit rgb values from memory into 32-bits
      rgb = (img[pixel_index] << 24) | (img[pixel_index + 1] << 16) | (img[pixel_index + 2] << 8);

      // assembly inlining to custom hardware instruction
      __asm__ __volatile__ (
        "rgb_to_ycc\t%0, %1\n"
        : "=r" (ycc)
        : "r" (rgb)
      );

      y[y_index++] = ycc>>24;
    }
  }
  return ycc_image;
}
