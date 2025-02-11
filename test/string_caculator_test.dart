import 'package:test/test.dart';

void main() {
  StringCalculator stringCalculator = StringCalculator();
  test('empty string returns 0', () {
    expect(StringCalculator.add(''), equals(0));
  });
}
