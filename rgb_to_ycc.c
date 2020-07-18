#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include "rgb_to_ycc.h"

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
  int y_index = 0, cb_index = 0, cr_index = 0;
  uint8_t r, g, b;
  for (int row_start_index = 0; row_start_index < img_bytes; row_start_index += physical_width) { // RGB -> YCC
    // converts RGB -> YCC for row above
    for (int pixel_index = row_start_index; pixel_index < row_start_index + physical_width; pixel_index += 3) {
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
      cb[cb_index++] = 128 + ((-2483028*r + -4882170*g + 7365198*b + (1 << 23)) >> 24); // cb can be written to consecutively, so ++ is ok

      // original coefficients are 0.439, -0.368, -0.071 which can be represented with [-2^-1 = -0.5, 2^-1 = 0.5]
      // we can allow for a 23-bit representation; with 23-bit representation, scale factor is 2^24, leaving 8 bits for each RGB multiplication, 1 bit for sign, and none for addition (buffer for addition not needed, as seen below)
      // range of values sum in brackets can reach is [0 - 1574373825 - 303751496 = -1878125321, 1878125490 - 0 - 0 + 8388608 = 1886514098], both of which can be represented by 32 bits, therefore no bits are needed as a buffer for addition
      // the sum in brackets is immediately scaled down to an 8-bit value so it can be packaged into a uint8_t
      cr[cr_index++] = 128 + ((7365198*r + -6174015*g + -1191182*b + (1 << 23)) >> 24); // cr can be written to consecutively, so ++ is ok

      // calculate Y value for second pixel
      pixel_index += 3;

      // original coefficients are 0.257, 0.504, 0.098 which can be represented with [-2^0 = -1, 2^0 = 1]
      // we can allow for a 24-bit representation; with 24-bit representation, scale factor is 2^24, leaving 8 bits for each RGB multiplication, none for sign (none needed), and none for addition (buffer for addition not needed, as seen below)
      // range of values the sum in brackets can reach is [0 + 0 + 0 = 0, 1099494720 + 2156207580 + 419262585 + 8388608 = 3683353887], both of which can be represented by 32 bits, therefore no bits are needed as a buffer for addition
      // the sum in brackets is immediately scaled down to an 8-bit value so it can be packaged into a uint8_t
      y[y_index++] = 16 + ((4311744*img[pixel_index] + 8455716*img[pixel_index + 1] + 1644167*img[pixel_index + 2] + (1 << 23)) >> 24); // y can be written to consecutively, so ++ is ok
    }

    row_start_index += physical_width;

    // converts RGB -> Y for row below
    for (int pixel_index = row_start_index; pixel_index < row_start_index + physical_width; pixel_index += 3) {
      // calculate Y value for pixel

      // original coefficients are 0.257, 0.504, 0.098 which can be represented with [-2^0 = -1, 2^0 = 1]
      // we can allow for a 24-bit representation; with 24-bit representation, scale factor is 2^24, leaving 8 bits for each RGB multiplication, none for sign (none needed), and none for addition (buffer for addition not needed, as seen below)
      // range of values the sum in brackets can reach is [0 + 0 + 0 = 0, 1099494720 + 2156207580 + 419262585 + 8388608 = 3683353887], both of which can be represented by 32 bits, therefore no bits are needed as a buffer for addition
      // the sum in brackets is immediately scaled down to an 8-bit value so it can be packaged into a uint8_t
      y[y_index++] = 16 + ((4311744*img[pixel_index] + 8455716*img[pixel_index + 1] + 1644167*img[pixel_index + 2] + (1 << 23)) >> 24); // y can be written to consecutively, so ++ is ok    }
    }
  }

  return ycc_image;
}

uint8_t *ycc_to_rgb(ycc_image_t *ycc_image) {
  uint8_t *rgb_image = (uint8_t *)malloc(ycc_image->height*ycc_image->width*3*sizeof(uint8_t));
  uint8_t y, cb, cr;
  int r, g, b, rgb_pixel_index;
  for (int i = 0; i < ycc_image->height; i++) {
    for (int j = 0; j < ycc_image->width; j++) {
      rgb_pixel_index = (i*ycc_image->width + j)*3;
      y = ycc_image->y[i*ycc_image->width + j];
      cb = ycc_image->cb[i/2 * ycc_image->width/2 + j/2];
      cr = ycc_image->cr[i/2 * ycc_image->width/2 + j/2];
      r = (1220542*(y - 16) + 1673527*(cr - 128) + (1 << 19)) >> 20;
      g = (1220542*(y - 16) - 852492*(cr - 128) - 409993*(cb - 128) + (1 << 19)) >> 20;
      b = (610271*(y - 16) + 1058013*(cb - 128) + (1 << 18)) >> 19;
      // the values must saturate instead of wrapping around
      rgb_image[rgb_pixel_index] = r > 255 ? 255 : (r < 0 ? 0 : r);
      rgb_image[rgb_pixel_index + 1] = g > 255 ? 255 : (g < 0 ? 0 : g);
      rgb_image[rgb_pixel_index + 2] = b > 255 ? 255 : (b < 0 ? 0 : b);
    }
  }
  return rgb_image;
}

void ycc_image_free(ycc_image_t *ycc_image) {
  free(ycc_image->y);
  free(ycc_image->cb);
  free(ycc_image->cr);
  free(ycc_image);
}

void ycc_image_debug(ycc_image_t *ycc_image) {
  printf("Debugging YCC image...\n");
  long y_min = 2147483647, y_max = -2147483648, cb_min = 2147483647, cb_max = -2147483648, cr_min = 2147483647, cr_max = -2147483648;
  for (int i = 0; i < ycc_image->height*ycc_image->width; i++) {
    if (ycc_image->y[i] < y_min) y_min = ycc_image->y[i];
    if (ycc_image->y[i] > y_max) y_max = ycc_image->y[i];
  }
  for (int i = 0; i < ycc_image->height*ycc_image->width/4; i++) {
    if (ycc_image->cb[i] < cb_min) cb_min = ycc_image->cb[i];
    if (ycc_image->cb[i] > cb_max) cb_max = ycc_image->cb[i];
    if (ycc_image->cr[i] < cr_min) cr_min = ycc_image->cr[i];
    if (ycc_image->cr[i] > cr_max) cr_max = ycc_image->cr[i];
  }
  printf("YCC image stats:\n\tpixel_count=%d\n\twidth=%d\n\theight=%d\n\ty_bytes=%d\n\tcb_bytes=%d\n\tcr_bytes=%d\n\ttotal_bytes=%d\n\ty_max=%ld\n\ty_min=%ld\n\tcb_max=%ld\n\tcb_min=%ld\n\tcr_max=%ld\n\tcr_max=%ld\n", ycc_image->height*ycc_image->width, ycc_image->width, ycc_image->height, ycc_image->y_bytes, ycc_image->cb_bytes, ycc_image->cr_bytes, ycc_image->total_bytes, y_max, y_min, cb_max, cb_min, cr_max, cr_min);
  printf("First row of Y:\n");
  for (int i = 0; i < ycc_image->width; i++) {
    printf("%d ", ycc_image->y[i]);
  }
  printf("\nFirst row of Cb:\n");
  for (int i = 0; i < ycc_image->width/2; i++) {
    printf("%d ", ycc_image->cb[i]);
  }
  printf("\nFirst row of Cr:\n");
  for (int i = 0; i < ycc_image->width/2; i++) {
    printf("%d ", ycc_image->cr[i]);
  }
  printf("\nFinished debug.\n");
}

void rgb_image_print_hex(uint8_t *img, int width, int height) {
  int idx = 0;
  for (int i = 0; i < height; i++) {
    idx = i*width*3;
    for (int j = 0; j < width*3; j += 3) {
      printf("0x%02x%02x%02x ", *(img + idx + j), *(img + idx + j + 1), *(img + idx + j + 2));
    }
    printf("\n");
  }
}

void rgb_image_print(uint8_t *img, int width, int height) {
  int idx = 0;
  for (int i = 0; i < 1; i++) { // TODO change this back to use height, not 1
    idx = i*width*3;
    for (int j = 0; j < width*3; j += 3) {
      printf("(%d,%d,%d) ", *(img + idx + j), *(img + idx + j + 1), *(img + idx + j + 2));
    }
    printf("\n");
  }
}

// NOTE: usually you will not want to set print_image_comparison as it is a lot of clutter
void rgb_image_compare(uint8_t *rgb_image_1, uint8_t *rgb_image_2, int width, int height, int print_image_comparison) {
  int idx = 0, flag = 0, max_error_red = 0, max_error_green = 0, max_error_blue = 0, red1, red2, green1, green2, blue1, blue2;
  for (int i = 0; i < height; i++) { // TODO change this back to use height, not 1
    idx = i*width*3;
    for (int j = 0; j < width*3; j += 3) {
      red1 = *(rgb_image_1 + idx + j); red2 = *(rgb_image_2 + idx + j); green1 = *(rgb_image_1 + idx + j + 1); green2 = *(rgb_image_2 + idx + j + 1); blue1 = *(rgb_image_1 + idx + j + 2); blue2 = *(rgb_image_2 + idx + j + 2);
      if (red1 - red2 > max_error_red) {
        flag = 1;
        max_error_red = red1 - red2;
      } else if (red2 - red1 > max_error_red) {
        flag = 1;
        max_error_red = red2 - red1;
      } if (green1 - green2 > max_error_green) {
        flag = 1;
        max_error_green = green1 - green2;
      } else if (green2 - green1 > max_error_green) {
        flag = 1;
        max_error_green = green2 - green1;
      } if (blue1 - blue2 > max_error_blue) {
        flag = 1;
        max_error_blue = blue1 - blue2;
      } else if (blue2 - blue1 > max_error_blue) {
        flag = 1;
        max_error_blue = blue2 - blue1;
      }
      if (print_image_comparison || flag) printf("(%d->%d,%d->%d,%d->%d) ", red1, red2, green1, green2, blue1, blue2);
      if (flag && !print_image_comparison) {
        printf("pixel row=%d column=%d", i, j);
        printf("\n");
      }
      flag = 0;
    }
    if (print_image_comparison) printf("\n");
  }
  printf("max_error_red=%d max_error_green=%d max_error_blue=%d\n", max_error_red, max_error_green, max_error_blue);
}
