abstract class Fillable {
  void fill(double volume);
}

class Cup implements Fillable {
  @override
  void fill(double volume) {
    print('Cup if full');
  }
}

class Glass {}

class Plate {}
