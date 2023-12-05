import 'package:dart_challenge/exercise_1.dart' as dart_challenge;
import 'package:dart_challenge/unit_test_2.dart' as unit_test_2;

void main(List<String> arguments) {
  dart_challenge.exercise1();
  print(unit_test_2.unitTest2([1, 1, 2, 3, 5, 8, 89, 13, 21, 34, 55],
      [1, 2, 3, 4, 5, 6, 10, 7, 8, 9, 11, 12, 13]));
}
