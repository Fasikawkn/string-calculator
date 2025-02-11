import 'package:string_caculator/string_calculator.dart';
import 'package:test/test.dart';

void main() {
  StringCalculator stringCalculator = StringCalculator();
  test('empty string returns 0', () {
    expect(stringCalculator.add(''), equals(0));
  });
}
