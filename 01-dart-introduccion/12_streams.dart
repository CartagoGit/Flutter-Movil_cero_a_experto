void main() {
  emitNumbers().listen((event) {
    print('desde listen $event');
  });
}

Stream emitNumbers() {
  return Stream.periodic(const Duration(seconds: 1), (value) {
    print('desde periodic $value');
    return value;
  }).take(5);
}
