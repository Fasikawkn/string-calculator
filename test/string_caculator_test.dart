import 'package:string_caculator/string_calculator.dart';
import 'package:test/test.dart';

void main() {
  StringCalculator stringCalculator = StringCalculator();

  test('empty string returns 0', () {
    expect(stringCalculator.add(''), equals(0));
  });

  test('single number returns the same number', () {
    expect(stringCalculator.add('1'), equals(1));
  });

  test('two numbers separated by a comma returns their sum', () {
    expect(stringCalculator.add('1,5'), equals(6));
  });

  test('multiple numbers separated by commas return their sum', () {
    expect(stringCalculator.add('1,2,3'), equals(6));
  });
}
