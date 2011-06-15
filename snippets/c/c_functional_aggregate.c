int functionalSum(int * array, int count) {
  if (0 >= count) {
    return 0;
  } else {
    return array[0] + functionalSum(&(array[1]), count - 1);
  }
}
