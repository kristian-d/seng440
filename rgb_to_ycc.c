#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

void print_image_hex(uint8_t *img, int width, int height) {
  int idx = 0;
  for (int i = 0; i < height; i++) {
    idx = i*width*3;
    for (int j = 0; j < width*3; j += 3) {
      printf("0x%02x%02x%02x ", *(img + idx + j), *(img + idx + j + 1), *(img + idx + j + 2));
    }
    printf("\n");
  }
}

uint8_t *rgb_to_ycc(uint8_t *img, int width, int height) {
  print_image_hex(img, width, height);
  return NULL;
}
