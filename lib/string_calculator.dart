class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }

    if (numbers.length == 1) {
      return int.parse(numbers);
    }

    // Check for a custom delimiter at the start
    if (numbers.startsWith('//')) {
      final delimiterLineEnd = numbers.indexOf('\n');
      final delimiter = numbers.substring(2, delimiterLineEnd);
      numbers = numbers.substring(delimiterLineEnd + 1);

      // Replace new delimiter and split numbers
      numbers = numbers.replaceAll(delimiter, ',');
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
