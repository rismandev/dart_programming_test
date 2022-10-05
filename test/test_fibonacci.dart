import 'package:test/test.dart';
import 'package:test_logic/calculate_fibonacci.dart';

void main() {
  test('test fibonacci calculation 1', () {
    print(calculate(5));
    expect(calculate(5), [0, 1, 1, 2, 3, 5]);
  });
  test('test fibonacci calculation 2', () {
    print(calculate(21));
    expect(calculate(21), [0, 1, 1, 2, 3, 5, 8, 13, 21]);
  });
  test('test fibonacci calculation 3', () {
    print(calculate(610));
    expect(
      calculate(610),
      [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610],
    );
  });
}
