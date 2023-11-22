import 'dart:isolate';

void main() async {
  ReceivePort port = ReceivePort();

  print('ddddd');

  Isolate.spawn(countUpIsolate, port.sendPort);

  port.listen((message) {
    print(message);
    port.close();
  });

  print('favd');
}

countUpIsolate(SendPort sendPort) {
  countUp() {
    var count = 0;
    for (var i = 0; i <= 1000000000; i++) {
      count = i;
    }
    return 'finshed';
  }

  String result = countUp();

  sendPort.send(result);
}
