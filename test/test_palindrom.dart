import 'package:test/test.dart';
import 'package:test_logic/check_palindrom.dart';

void main() {
  test('test palindrom katak', () {
    String word = "Katak";
    print("Kata : $word");
    expect(isPalindrom(word), true);
  });
  test('test palindrom kucing', () {
    String word = "Kucing";
    print("Kata : $word");
    expect(isPalindrom(word), false);
  });
}
