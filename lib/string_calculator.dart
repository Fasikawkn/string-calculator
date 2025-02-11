class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }

    if (numbers.length == 1) {
      return int.parse(numbers);
    }

    if (numbers.contains(',')) {
      return int.parse(numbers[0]) + int.parse(numbers[2]);
    }

    return 0;
  }
}
