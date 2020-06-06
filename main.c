#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

#define STB_IMAGE_IMPLEMENTATION
#include "stb/stb_image.h"

int main(int argc, char **argv) {
  if (argc < 2) {
    printf("Please provide the image location as an argument\n");
    exit(1);
  } else if (argc > 2) {
    printf("Please provide only the image location as an argument\n");
    exit(1);
  }

  char *filename = *(argv + 1);
  int width, height, bpp;

  uint8_t* rgb_img = stbi_load(filename, &width, &height, &bpp, 3); // 3 is the number of channels in RGB
  printf("Loaded image from %s\n", filename);
  if (width != 1280 || height != 1024) {
    printf("Unexpected image dimensions width=%d, height=%d\nExpected 1280x1024\n", width, height);
    exit(1);
  }

  stbi_image_free(rgb_img);
  printf("Freed memory allocated for image\n");
  return 0;
}
