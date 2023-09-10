void main() {
  emitNumber().listen((value) {
    print('Stream $value');
  });
}

Stream<int> emitNumber() async* {
  final valuesToEmit = [10, 22, 3, 34, 15];
  for (int i in valuesToEmit) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}
