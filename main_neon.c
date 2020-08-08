#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define STB_IMAGE_IMPLEMENTATION
#define STBI_NO_FAILURE_STRINGS
#define STBI_ASSERT(x)
#include "stb/stb_image.h"
#define STB_IMAGE_WRITE_IMPLEMENTATION
#include "stb/stb_image_write.h"
#include "rgb_to_ycc_neon.h"

void print_help() {
  printf("Please provide the input RGB image location as an argument. For an output RGB image, provide the output RGB image location as a second argument.\n");
}

int main(int argc, char **argv) {
  if (argc < 2) {
    printf("Expected more arguments.\n");
    print_help();
    exit(1);
  } else if (argc > 3) {
    printf("Expected fewer arguments.\n");
    print_help();
    exit(1);
  }

  char *infilename = *(argv + 1);
  char *outfilename = NULL;
  if (argc == 3) {
    outfilename = *(argv + 2);
  }
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

  struct timespec tstart={0,0}, tend={0,0};
  ycc_image_t *ycc_image;
  clock_gettime(CLOCK_MONOTONIC, &tstart);
  for (int i = 0; i < 1000; i++) {
    ycc_image = rgb_to_ycc(rgb_img, width, height);
    ycc_image_free(ycc_image);
  }
  clock_gettime(CLOCK_MONOTONIC, &tend);
  printf("%.5f seconds\n",
         ((double)tend.tv_sec + 1.0e-9*tend.tv_nsec) -
         ((double)tstart.tv_sec + 1.0e-9*tstart.tv_nsec));
  printf("Completed RGB->YCC conversion\n");

  uint8_t *rgb_img_out = NULL;
  if (outfilename != NULL) {
    rgb_img_out = ycc_to_rgb(ycc_image);
    printf("Completed YCC->RGB conversion\n");
  }

  //ycc_image_free(ycc_image);
  printf("Freed memory allocated for YCC image\n");
  stbi_image_free(rgb_img);
  printf("Freed memory allocated for input RGB image\n");

  if (rgb_img_out != NULL) {
    stbi_write_jpg(outfilename, width, height, bpp, rgb_img_out, 100);
    printf("Output RGB image written to '%s'\n", outfilename);
    free(rgb_img_out);
    printf("Freed memory allocated for output RGB image\n");
  }
  return 0;
}
