import 'dart:io';

import 'package:dart_challenge/exercise_1.dart' as dart_challenge;
import 'package:dart_challenge/unit_test_2.dart' as unit_test_2;

void main(List<String> arguments) {
  const List<String> menu = [
    "0. Exit",
    "1. Exercise 1 (Print a square with an input size)",
    "2. Unit test 1",
    "3. Unit test 2",
    "4. Unit test 3",
    "5. Unit test 4",
    "6. Play rock paper scissor game",
    "7. Game 2",
    "8. Game 3",
    "9. Game 4"
  ];

  int? select = 0;

  do {
    menu.forEach((element) {
      print(element);
    });

    print("Your choose:");
    select = int.parse(stdin.readLineSync() ?? "0");

    switch (select) {
      case 1:
        dart_challenge.exercise1();
        break;
      case 3:
         print(unit_test_2.unitTest2([1, 1, 2, 3, 5, 8, 89, 13, 21, 34, 55],
      [1, 2, 3, 4, 5, 6, 10, 7, 8, 9, 11, 12, 13]));
        break;
      default:
        break;
    }
  } while (select != 0);
}
