#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

#define STB_IMAGE_IMPLEMENTATION
#define STBI_NO_FAILURE_STRINGS
#define STBI_ASSERT(x)
#include "stb/stb_image.h"
#define STB_IMAGE_WRITE_IMPLEMENTATION
#include "stb/stb_image_write.h"
#include "rgb_to_ycc_neon.h"

int main(int argc, char **argv) {
  if (argc < 3) {
    printf("Please provide the input image location and output image location as arguments\n");
    exit(1);
  } else if (argc > 3) {
    printf("Please provide only the input and output image locations as arguments\n");
    exit(1);
  }

  char *infilename = *(argv + 1);
  char *outfilename = *(argv + 2);
  int width, height, bpp;

  // 3 is the number of channels we want, bpp is the actual number of channels contained in the image (bytes per pixel)
  uint8_t *rgb_img = stbi_load(infilename, &width, &height, &bpp, 3);
  if (rgb_img == NULL) {
    printf("The image failed to load");
    exit(1);
  }
  printf("Input image loaded from '%s'\n", infilename);
  if (width != 1280 || height != 1024) {
    printf("Unexpected image dimensions width=%d, height=%d\nExpected 1280x1024\n", width, height);
    exit(1);
  }

  ycc_image_t *ycc_image = rgb_to_ycc(rgb_img, width, height);
  printf("Completed RGB->YCC conversion\n");
  uint8_t *rgb_img_out = ycc_to_rgb(ycc_image);
  printf("Completed YCC->RGB conversion\n");
  ycc_image_free(ycc_image);
  printf("Freed memory allocated for YCC image\n");
  stbi_image_free(rgb_img);
  printf("Freed memory allocated for input RGB image\n");
  stbi_write_jpg(outfilename, width, height, bpp, rgb_img_out, 100);
  printf("Output RGB image written to '%s'\n", outfilename);
  free(rgb_img_out);
  printf("Freed memory allocated for output RGB image\n");
  return 0;
}
