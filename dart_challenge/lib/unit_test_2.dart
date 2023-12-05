List<int> unitTest2(List<int> a, List<int> b) {
  List<int> result = a.where((element) => b.contains(element)).toSet().toList();

  return result;
}
