#include "blink.h"

uint64_t __clock = 0;
const uint32_t __coverage_len = 1;
uint32_t __coverage[1] = {0};
uint32_t __coverage_index = 0;
uint8_t e1 = 0;  /* blink_atom.isOn */
uint8_t e2 = 0;  /* blink_atom.doReset */
uint16_t e3 = 30000;  /* blink_atom.toggle */

/* blink_atom.decrement */
void r0(void) {
  const uint16_t e4 = 0;
  uint8_t e5;
  const uint16_t e6 = 1;
  uint16_t e7;
  uint16_t e8;
  e5 = e4 < e3;
  e7 = e3 - e6;
  e8 = e5 ? e7 : e3;
  if (e5) {
    __coverage[0] = __coverage[0] | (1 << 0);
  }
  e3 = e8;
}

