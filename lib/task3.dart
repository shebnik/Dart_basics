import 'dart:io';
import 'dart:convert';

class Task3 {
  Task3() {
    print("Task3:");

    print("Введите строку слов разделенными пробелами:");
    String line = stdin.readLineSync(encoding: utf8) ?? "";

    List<num> numbers = findNumbers(line);

    print("Числа найденные в строке:");
    numbers.forEach((element) {
      print(element);
    });
  }

  List<num> findNumbers(String line) {
    List<String> lines = line.split(" ");
    List<num> result = [];
    lines.forEach((element) {
      num? n = num.tryParse(element);
      if (n != null) result.add(n);
    });
    return result;
  }
}
