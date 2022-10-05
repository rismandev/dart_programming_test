import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:test_logic/search_anagram.dart';

void main() {
  test("Test anagramt", () {
    List<String> data = ["aku", "makan", "kua", "kau", "muka", "kamu"];
    List<String> expectData = ["[aku, kua, kau]", "[muka, kamu]", "[makan]"];
    print(search(data));
    expect(search(data), expectData);
  });
}
