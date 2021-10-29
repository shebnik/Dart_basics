class Task1 {
  Task1() {
    print("Task1:");
    nod(12, 27);
    nok(32, 76);
    factorization(36);
  }

  void nod(a, b) {
    int r = gcd(a, b);
    print("НОД $a и $b = $r");
  }

  void nok(a, b) {
    int r = lcm(a, b);
    print("НОК $a и $b = $r");
  }

  void factorization(n) {
    var factors = factorize(n);
    String r = factors.join(" * ");

    print("Число $n разбитое на множители: $r");
  }

  int gcd(int a, int b) {
    return b != 0 ? gcd(b, a % b) : a;
  }

  int lcm(int a, int b) {
    return a ~/ gcd(a, b) * b;
  }

  List<int> factorize(int n) {
    int div = 2;
    List<int> factors = [1];
    while (n > 1) {
      while (n % div == 0) {
        factors.add(div);
        n = n ~/ div;
      }
      div++;
    }
    return factors;
  }
}