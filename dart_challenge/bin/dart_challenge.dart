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
        List<int> list1 = [], list2 = [];
        int? nL1, nL2;
        print("number of elements in List 1:");
        nL1 = int.parse(stdin.readLineSync() ?? "0");
        for (int i = 0; i < nL1; i++) {
          list1.add(int.parse(stdin.readLineSync() ?? "0"));
        }
        print("number of elements in List 2:");
        nL2 = int.parse(stdin.readLineSync() ?? "0");
        for (int i = 0; i < nL2; i++) {
          list2.add(int.parse(stdin.readLineSync() ?? "0"));
        }
        print(unit_test_2.unitTest2(list1, list2));
        break;
      default:
        break;
    }
  } while (select != 0);
}
