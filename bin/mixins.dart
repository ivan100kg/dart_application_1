abstract class Flyable {
  void fly();
}

mixin Mechanism {
  void repair() {
    print('Repair details');
  }
}

class Duck implements Flyable {
  @override
  void fly() {
    print('Duck fly');
  }
}

class Plane extends Object with Mechanism implements Flyable{
  @override
  void fly() {
    print('Plane fly');
  }
}
