class Task2 {
  Task2() {
    print("Task2:");
    toBinary(456);
    toDecimal(101);
  }

  void toBinary(int n) {
    var r = n.toRadixString(2);
    print("Число $n в двоичной системе: $r");
  }

  void toDecimal(int n) {
    var r = int.parse(n.toString(), radix: 2);
    print("Число $n в десятичной системе: $r");
  }
}
