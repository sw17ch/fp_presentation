/* blink_atom.reset */
void r1(void) {
  const uint16_t e4 = 30000;
  uint16_t e5;
  const uint8_t e6 = 0;
  e5 = e2 ? e4 : e3;
  if (e2) {
    __coverage[0] = __coverage[0] | (1 << 1);
  }
  e3 = e5;
  e2 = e6;
}

