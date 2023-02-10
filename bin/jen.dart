T first<T>(List<T> ts) {
  // принимает List опред типа и возвращ 1-ый эл
  return ts[0];
}

abstract class Cache<T> {
  T getByKey(String key);
  void setByKey(String key, T value);
}

class MyCache implements Cache<int> {
  @override
  int getByKey(String key) {
    return 23;
  }

  @override
  void setByKey(String key, int value) {
    print(key);
  }
}

class Stack<T> {
  List<T> storage = [];
  T element;
  T getFirst() {
    return storage[0];
  }
  Stack(this.element);
}
