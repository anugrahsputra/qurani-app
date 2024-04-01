import 'dart:async';

class TimeStream {
  final _controller = StreamController<DateTime>.broadcast();

  Stream<DateTime> get stream => _controller.stream;

  TimeStream() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      _controller.sink.add(DateTime.now());
    });
  }

  void dispose() {
    _controller.close();
  }
}
