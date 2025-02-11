class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }

    if (numbers.length == 1) {
      return int.parse(numbers);
    }

    return 0;
  }
}
