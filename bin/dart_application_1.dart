import 'package:dart_application_1/dart_application_1.dart'
    as dart_application_1;

import 'article.dart';
import 'inh.dart';
import 'jen.dart';
import 'stat.dart';

void main(List<String> arguments) {
  print('Hello world: ${dart_application_1.calculate()}!');
  dart_application_1.div();
  print(arguments);
  var article = Article('title');
  article.title = 'her';

  print(article);
  print(article.title);

  // var shape = Shape(200, Color.blue);
  var rect = Rectangle(10, 20, 300, Color.red);

  // print(shape.runtimeType);
  print(rect.runtimeType);
  // shape.foo();
  rect.foo();
  print('123.678'.toDouble());

  Car car = Car(200);
  car.sum = 300;
  Car.totalCar = 310;
  Car.foo();
  car.foo2();

  Stack stack = Stack<double>(300);

  var a = car.sum;
}

void foo(Shape shape) {
  print(shape.getSquare);
  shape.foo();
}

extension MyExt on String {
  double? toDouble() {
    return double.tryParse(this);
  }
}
