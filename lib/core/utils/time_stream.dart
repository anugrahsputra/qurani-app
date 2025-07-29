import 'dart:async';

class TimeStream {
  final _controller = StreamController<DateTime>.broadcast();
  Timer? _timer;

  Stream<DateTime> get stream => _controller.stream;

  TimeStream() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (!_controller.isClosed) {
        _controller.sink.add(DateTime.now());
      }
    });
  }

  void dispose() {
    _timer?.cancel();
    _controller.close();
  }
}