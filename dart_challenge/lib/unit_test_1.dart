List<int> unitTest1(int num) {
  List<int> result = [1];

  for (int i = 2; i <= num ~/ 2; i++) {
    if (num % i == 0) result.add(i);
  }
  result.add(num);

  return result;
}
