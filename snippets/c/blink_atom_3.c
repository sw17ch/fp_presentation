void blink_atom(void) {
  if (__clock % 1 == 0) {
    r0();  /* blink_atom.decrement */
  }
  if (__clock % 2 == 0) {
    r1();  /* blink_atom.reset */
  }
  if (__clock % 2 == 1) {
    r2();  /* blink_atom.flip */
  }

  __clock = __clock + 1;
}
