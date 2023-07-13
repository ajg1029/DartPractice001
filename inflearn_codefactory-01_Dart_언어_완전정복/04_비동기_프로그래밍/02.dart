void main() {
  // Future
  // 미래에 받아올 값

  Future<String> name = Future.value('Deon');
  Future<int> number = Future.value(1);
  Future<bool> isTrue = Future.value(true);

  addNumbers(1, 1);
  addNumbers(2, 2);


}

void addNumbers(int number1, int number2) {
  print('계산 시작 : $number1 + $number2');

  Future.delayed(Duration(seconds: 3), (){
    print('계산 완료 : $number1 + $number2 = ${number1 + number2}');
  });

  print('함수 완료');

}