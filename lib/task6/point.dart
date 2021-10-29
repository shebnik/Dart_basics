import 'dart:math';

class Point {
  final double x, y, z;

  Point(this.x, this.y, this.z);

  factory Point.zero() {
    return Point(0, 0, 0);
  }

  factory Point.unitVector() {
    return Point(1, 1, 1);
  }

  double distanceTo(Point other) {
    var dx = x - other.x;
    var dy = y - other.y;
    var dz = z - other.z;
    return sqrt(dx * dx + dy * dy + dz * dz);
  }

  String stringValue() {
    return "[$x, $y, $z]";
  }
}
