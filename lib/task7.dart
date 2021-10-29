import 'dart:io';
import 'dart:convert';

extension on num {
  num sqrt(num st) {
    num number = this;
    if (number < 0) {
      print("Корень из отрицательного числа невозможен");
      throw ArgumentError();
    }

    num xPre = 1, eps = 0.001, delX = 2147483647, xK = 0.0;

    while (delX > eps) {
      xK = ((st - 1.0) * xPre + number / xPre.power(st - 1)) / st.toDouble();
      delX = xK - xPre;
      delX = delX.abs();
      xPre = xK;
    }

    xK = num.parse(xK.toStringAsFixed(3));
    return xK;
  }

  num power(num st) {
    if (st <= 0) return 1;
    return this * power(st - 1);
  }
}

class Task7 {
  Task7() {
    print("Task7:");

    print("Введите число из которого извлечь корень");
    String line = stdin.readLineSync(encoding: utf8) ?? "";
    num? number = double.tryParse(line);
    if (number == null) {
      print("Число введено неверно");
      return;
    }

    print("Введите степень корня");
    line = stdin.readLineSync(encoding: utf8) ?? "";
    num? st = double.tryParse(line);
    if (st == null) {
      print("Cтепень введенна неверно");
      return;
    }

    try {
      num res = number.sqrt(st);
      print("Корень $st степени числа $number = $res");
    } catch (e) {
      print("Произошла ошибка при вычислении корня числа");
      print(e);
    }
  }
}
