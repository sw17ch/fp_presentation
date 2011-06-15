int sum(int * array, int count) {
  int i;
  int sum = 0;

  for (i = 0; i < count; i++) {
    sum += array[i];
  }

  return sum;
}
