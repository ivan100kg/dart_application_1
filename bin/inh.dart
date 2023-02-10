import 'dart:math';

abstract class Shape {
  int square;
  final Color color;

  int get getSquare => square * 2;

  void foo();

  Shape(this.square, this.color);
}

class Rectangle extends Shape {
  int sideA;
  int sideB;
  // Rectangle(this.sideA, this.sideB, super.square, super.color);
  Rectangle(this.sideA, this.sideB, int square, Color color)
      : super(square, color);

  @override
  int get getSquare => pi.round() * sideA * sideB;

  @override
  void foo() {
    // super.foo();
    print('child');
  }
}

enum Color { red, green, blue }
