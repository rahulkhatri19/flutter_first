import 'dart:math';

abstract class Shape {
  num get area;
}

class Circle implements Shape, ShapeCirSq {
  final num radius;

  Circle(this.radius);

  num get area => pi * pow(radius, 2);
}

class Square implements Shape, ShapeCirSq {
  final num side;

  Square(this.side);

  num get area => pow(side, 2);
}

main() {
  final circle = shapeFactory('circle');
  final square = shapeFactory('square');

  final circleShape = ShapeCirSq('circle');
  final squareShape = ShapeCirSq('square');

  final _circle = Circle(2);
  final _square = Square(2);

  print(circle.area);
  print(square.area);
  print(_circle.area);
  print(_square.area);
  print(circleShape.area);
  print(squareShape.area);
}

Shape shapeFactory(String type) {
  if (type == 'circle') return Circle(2);
  if (type == 'square') return Square(2);
  throw 'Can \'t create $type';
}

abstract class ShapeCirSq {
  factory ShapeCirSq(String type) {
    if (type == 'circle') return Circle(2);
    if (type == 'square') return Square(2);
    throw 'Can \'t create $type';
  }

  num get area;
}

class CircleMatrix implements Circle {
  num area;
  num radius;
}
