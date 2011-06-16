/* blink_atom.flip */
void r2(void) {
  const uint16_t e4 = 0;
  uint8_t e5, e6, e7, e8, e9, e10;
  uint8_t e11, e12, e13, e14, e15;
  uint8_t e16, e17;
  e5 = e4 < e3;
  e6 = ! e5;
  e7 = e2 && e5;
  e8 = ! e7;
  e9 = e8 && e5;
  e10 = ! e9;
  e11 = e1 && e5;
  e12 = ! e11;
  e13 = ! e1;
  e14 = e13 && e6;
  e15 = ! e14;
  e16 = e12 && e15;
  e17 = ! e16;
  if (e6) {
    setLED(e1);
    __coverage[0] = __coverage[0] | (1 << 2);
  }
  e2 = e10;
  e1 = e17;
}
