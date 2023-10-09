import 'dart:collection';

class LogBuffer {
  final int loglimitBytes;
  final Queue<String> _list = Queue();

  int _currentSize = 0;
  bool _contracting = false;

  LogBuffer({this.loglimitBytes = 100000});

  void _contractBuffer() {
    while (_currentSize > loglimitBytes) {
      final buffer = _list.removeFirst();
      _currentSize -= buffer.length;
    }
    _contracting = false;
  }

  void push(String buffer) {
    if (buffer == null) return;
    _currentSize += buffer.length;
    _list.add(buffer);

    if (_currentSize > loglimitBytes && !_contracting) {
      _contracting = true;
      // Run contract at most every 5 seconds.
      Future.delayed(const Duration(seconds: 5), _contractBuffer);
    }
  }

  int get length => _currentSize;
  @override
  String toString() {
    _contractBuffer();
    return _list.map((msg) => msg + '\n').join();
  }
}
