class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }

    if (numbers.length == 1) {
      return int.parse(numbers);
    }

    // Replace teh new line character with a comma and split the string
    List<String> numberList = numbers.replaceAll('\n', ',').split(',');

    int sum = 0;
    for (String number in numberList) {
      sum += int.parse(number);
    }
    return sum;
  }
}
