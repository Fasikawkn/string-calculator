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

  test('multiple numbers separated by commas or newlines return their sum', () {
    expect(stringCalculator.add('1\n2,3'), equals(6));
  });

  test('numbers with custom delimiter should return their sum', () {
    expect(stringCalculator.add('//;\n1;2'), equals(3));
  });

  test('throws exception when multiple negative numbers are used', () {
    expect(
        () => stringCalculator.add('1,-2,-3'),
        throwsA(isA<FormatException>().having((e) => e.message, 'message',
            'negative numbers not allowed -2, -3')));
  });
}
