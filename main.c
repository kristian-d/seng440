#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

#define STB_IMAGE_IMPLEMENTATION
#define STBI_NO_FAILURE_STRINGS
#define STBI_ASSERT(x)
#include "stb/stb_image.h"

#include "rgb_to_ycc.h"

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

  // 3 is the number of channels we want, bpp is the actual number of channels contained in the image (bytes per pixel)
  uint8_t* rgb_img = stbi_load(filename, &width, &height, &bpp, 3);
  if (rgb_img == NULL) {
    printf("The image failed to load");
    exit(1);
  }
  printf("Loaded image from %s\n", filename);
  if (width != 1280 || height != 1024) {
    printf("Unexpected image dimensions width=%d, height=%d\nExpected 1280x1024\n", width, height);
    exit(1);
  }

  uint8_t* ycc_img = rgb_to_ycc(rgb_img, width, height);

  stbi_image_free(rgb_img);
  printf("Freed memory allocated for image\n");
  return 0;
}
