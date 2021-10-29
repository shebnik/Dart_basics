class Task5 {
  Task5() {
    print("Task5:");

    List<String> stringCollection = [
      'one',
      'two',
      'three',
      'cat',
      'dog',
      'zero',
      'zero',
      'apple',
      'one',
      'five',
      'seven',
      'cat',
      'seven',
    ];

    print(stringCollection);

    var result = getNumbers(stringCollection);
    print("Результат: $result");
  }

  Set<int> getNumbers(List<String> stringCollection) {
    final mapNumbers = {
      "zero": 0,
      "one": 1,
      "two": 2,
      "three": 3,
      "four": 4,
      "five": 5,
      "six": 6,
      "seven": 7,
      "eight": 8,
      "nine": 9,
    };

    Set<int> result = {};

    for (var element in stringCollection) {
      int? n = mapNumbers[element];
      if (n != null) {
        result.add(n);
      }
    }

    return result;
  }
}
