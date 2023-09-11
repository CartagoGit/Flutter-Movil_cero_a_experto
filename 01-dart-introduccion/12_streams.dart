void main() {
  emitNumbers().listen((event) {
    print('desde listen $event');
  });

  emitSomething().listen((event) => print('Esto es algo $event'),);
}

Stream<String> emitSomething() {
  Stream<String> controller = Stream.empty();
  return controller;
}

Stream emitNumbers() {
  return Stream.periodic(const Duration(seconds: 1), (value) {
    print('desde periodic $value');
    return value;
  }).take(5);
}
