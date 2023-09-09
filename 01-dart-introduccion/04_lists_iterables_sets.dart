void main() {
  final numbers = [
    1,
    2,
    2,
    3,
    3,
    4,
    4,
    2,
    3,
    10,
    11,
    12,
    13,
    14,
  ];

  print('List original ${numbers}');
  print('List length ${numbers.length}');
  print('Index 0 ${numbers[0]}');
  print('Index first ${numbers.first}');
  print('Index last ${numbers.last}');

  final reversedNumbers = numbers.reversed;
  print('Reversed but Iterable ${reversedNumbers}');
  print('Reversed but List ${reversedNumbers.toList()}');
  print('Reversed but Set ${reversedNumbers.toSet()}');

  final numberMinusThan5 = numbers.where((int number) => number < 5);

  print('Numbers greater than 5 ${numberMinusThan5}');
  print('Numbers greater than 5 not repeated ${numberMinusThan5.toSet()}');
}
