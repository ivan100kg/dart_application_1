Future<void> fetchUserOrder() {
  // асинх ф-я , возвращ объект Future без значения
  // асинхронная операция
  var future =
      Future.delayed(const Duration(seconds: 2), () => print('Large Latte'));
  return future;
}

void main() {
  // fetchUserOrder();                 // вызов асинхронной функции
  // print('Fetching user order...');
  var future = Future<Object?>.delayed(Duration(seconds: 3));
  future.then((value) => print('Hello $value'));
  future.timeout(Duration(seconds: 4));
  future.whenComplete(() => print('End'));
  var f1 = Future(() => print('Hello Async!'));
  // var f2 = Future.error(Exception);
  var f3 = Future.value(123);
  f3.then((value) => print(value));
  var f4 = Future.wait([f1, f3, future]);
  f4.whenComplete(() => print('f4'));

}
