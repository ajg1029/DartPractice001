import 'dart:async';

void main() {
  playAllStream().listen((val) {
    print(val);
  });
}

Stream<int> playAllStream() async* {
  yield* calculate(10);
  yield* calculate(1000);
}

Stream<int> calculate(int number) async* {
  for(int i = 0; i < 7; i++) {
    yield i * number;
    await Future.delayed(Duration(seconds: 1));
  }
}