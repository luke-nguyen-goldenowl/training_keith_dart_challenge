import 'package:dart_challenge/unit_test_1.dart' as unit_test_1;
import 'package:dart_challenge/unit_test_2.dart' as unit_test_2;
import 'package:test/test.dart';

void main() {
  group("unit test 1", () {
    test("input 20", () {
      List<int> expected = [1, 2, 4, 5, 10, 20];
      List<int> actual = unit_test_1.unitTest1(20);

      expect(actual, expected);
    });

    test("input 31", () {
      List<int> expected = [1, 31];
      List<int> actual = unit_test_1.unitTest1(31);
      expect(actual, expected);
    });
  });

  test("unit test 2", () {
    List<int> a = [1, 1, 2, 3, 5, 8, 89, 13, 21, 34, 55];
    List<int> b = [1, 2, 3, 4, 5, 6, 10, 7, 8, 9, 11, 12, 13];
    List<int> actual = unit_test_2.unitTest2(a, b);

    List<int> expected = [1, 2, 3, 5, 8, 13];

    expect(actual, expected);
  });
}
