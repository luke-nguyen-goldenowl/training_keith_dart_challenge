import 'dart:io';

void exercise1() {
  int? squareSize = int.parse(stdin.readLineSync()!);
  String height = "|", weight = " ";
  for (int i = 1; i <= squareSize; i++) {
    height += "   |";
    weight += "--- ";
  }
  for (int i = 1; i <= squareSize * 2 + 1; i++) {
    if (i % 2 != 0) {
      print(weight);
    } else {
      print(height);
    }
  }
}
