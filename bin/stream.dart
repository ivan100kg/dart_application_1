import 'dart:async';

Stream<int>? stream;
StreamSubscription<int>? subscription;
StreamSubscription<int>? subscription2;
StreamController<int> controller = StreamController<int>();

void main(List<String> args) {
  print('one');
  stream = Stream.periodic(Duration(seconds: 1), (tick) => tick);
  print('two');
  subscription = stream?.listen((event) {
    print(event);
  });
  Future.delayed(Duration(seconds: 10), () => subscription?.cancel());
  subscription2 = controller.stream.listen((event) {
    print(event);
  });
  controller.add(100);
  controller.add(101);
  controller.add(102);
  controller.add(103);
  print('three');
  Future.delayed(Duration(seconds: 3), () {
    subscription2?.cancel();
    controller.close();
    print('controller closed');
  });
}
