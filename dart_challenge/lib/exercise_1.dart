import 'dart:io';

void exercise1() {
  print("input square size:");
  int? squareSize = int.parse(stdin.readLineSync() ?? "0");
  String height = "|", weight = " ";
  for (int i = 1; i <= squareSize; i++) {
    height += "   |";
    weight += "--- ";
  }
  print("Result exercise 1:");
  for (int i = 1; i <= squareSize * 2 + 1; i++) {
    if (i % 2 != 0) {
      print(weight);
    } else {
      print(height);
    }
  }
}
