class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) {
      return 0;
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

    // Validate numbers and calculate the sum
    int sum = 0;
    List<int> negativeNumbers = [];
    for (String number in numberList) {
      if (number.isEmpty) continue;

      int num = int.parse(number);

      // Check for negative numbers
      if (num < 0) {
        negativeNumbers.add(num);
      }

      sum += num;
    }

    // Throw exception if negative numbers are found
    if (negativeNumbers.isNotEmpty) {
      throw FormatException(
          'negative numbers not allowed ${negativeNumbers.join(', ')}');
    }
    return sum;
  }
}
