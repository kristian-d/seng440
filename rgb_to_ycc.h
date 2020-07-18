typedef struct ycc_image_t {
  uint8_t *y;
  uint8_t *cb;
  uint8_t *cr;
  int width;
  int height;
  int y_bytes;
  int cb_bytes;
  int cr_bytes;
  int total_bytes;
} ycc_image_t;

void rgb_image_print(uint8_t *, int, int);
void rgb_image_compare(uint8_t *, uint8_t *, int, int, int);
ycc_image_t *rgb_to_ycc(uint8_t *, int, int);
uint8_t *ycc_to_rgb(ycc_image_t *);
void ycc_image_free(ycc_image_t *);
void ycc_image_debug(ycc_image_t *);
