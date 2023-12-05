import 'package:dart_challenge/unit_test_1.dart' as unit_test_1;

import 'package:collection/collection.dart';
import 'package:test/test.dart';

void main() {
  group("unit test 1", () {
    test("input 20", () {
      List<int> expected = [1, 2, 4, 5, 10, 20];
      List<int> actual = unit_test_1.unitTest1(20);
      final bool equal = ListEquality().equals(actual, expected);
      expect(equal, true);
    });

    test("input 31", () {
      List<int> expected = [1, 31];
      List<int> actual = unit_test_1.unitTest1(31);
      final bool equal = ListEquality().equals(actual, expected);
      expect(equal, true);
    });
  });
}
