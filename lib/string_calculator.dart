class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }

    if (numbers.length == 1) {
      return int.parse(numbers);
    }

    return numbers
        .split(',')
        .map((number) => int.parse(number))
        .reduce((a, b) => a + b);
  }
}
