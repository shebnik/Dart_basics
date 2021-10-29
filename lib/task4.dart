class Task4 {
  Task4() {
    print("Task4:");

    List<String> words = [
      "Собака",
      "Кошка",
      "Ворона",
      "Кошка",
      "Яблоко",
      "Кошка",
      "Апельсин",
      "Собака",
      "Яблоко",
      "Кошка",
    ];
    print(words);

    var result = toMap(words);
    print("Результат: $result");
  }

  Map<String, int> toMap(List<String> words) {
    Map<String, int> result = {};
    words.forEach((word) {
      if (result.containsKey(word)) {
        result[word] = result[word]! + 1;
      } else {
        result[word] = 1;
      }
    });
    return result;
  }
}
