import 'package:skillbox/task6/point.dart';
import 'dart:math';

class Task6 {
  Task6() {
    print("Task6:");

    Point pointA = Point.zero();
    Point pointB = Point.unitVector();
    Point pointC = Point(4, 3, 2);

    String a = pointA.stringValue(),
        b = pointB.stringValue(),
        c = pointC.stringValue();

    double ab = pointA.distanceTo(pointB);
    print("Расстояние от точки $a до точки $b = $ab");

    double s = areaOfTriangle(pointA, pointB, pointC);
    print("Площадь треугольника с точками $a $b $c = $s");
  }

  double areaOfTriangle(Point a, Point b, Point c) {
    double ab = a.distanceTo(b), ac = a.distanceTo(c), bc = b.distanceTo(c);
    double p = (ab + ac + bc) / 2;
    return sqrt(p * (p - ab) * (p - ac) * (p - bc));
  }
}
