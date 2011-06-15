/* Cheating a little with dst. */
void functionalIncrement(int * src, int * dst, int count) {
  if(0 >= count) {
    return;
  } else {
    dst[0] = src[0] + 1;
    incrementArray(&(src[1]), &(dst[1]), count - 1);
  }
}
