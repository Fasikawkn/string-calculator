# String Calculator

## Overview
The String Calculator is a simple utility that takes a string of numbers separated by delimiters and returns their sum. It supports custom delimiters and handles edge cases such as empty strings and negative numbers.

## Features
- Add numbers separated by commas.
- Add numbers separated by newlines.
- Support for custom delimiters.
- Throws an exception for negative numbers.

## Usage
To use the String Calculator, create an instance of the `StringCalculator` class and call the `add` method with a string of numbers.

### Example
```dart
import 'package:string_caculator/string_calculator.dart';

void main() {
  StringCalculator stringCalculator = StringCalculator();

  print(stringCalculator.add('')); // Output: 0
  print(stringCalculator.add('1')); // Output: 1
  print(stringCalculator.add('1,2')); // Output: 3
  print(stringCalculator.add('1\n2,3')); // Output: 6
  print(stringCalculator.add('//;\n1;2')); // Output: 3
}
```

## Running Tests
To run the tests for the String Calculator, use the following command:
```sh
dart test
```

## Test Cases
The following test cases are included:
- Empty string returns 0.
- Single number returns the same number.
- Two numbers separated by a comma return their sum.
- Multiple numbers separated by commas return their sum.
- Multiple numbers separated by commas or newlines return their sum.
- Numbers with custom delimiter return their sum.
- Throws exception when multiple negative numbers are used.