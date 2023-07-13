import 'dart:async';

void main() {
  calculate(3).listen((val) {
    print('calculate(3) : $val');
  });
  calculate(4).listen((val) {
    print('calculate(5) : $val');
  });
}

Stream<int> calculate(int number) async* {
  for(int i = 0; i < 5; i++) {
    yield i * number;
    await Future.delayed(Duration(seconds: 1));
  }
}