void main() {

  addNumbers(1, 1);
  addNumbers(2, 2);


}

void addNumbers(int number1, int number2) async {
  print('계산 시작 : $number1 + $number2');

  await Future.delayed(Duration(seconds: 3), (){
    print('계산 완료 : $number1 + $number2 = ${number1 + number2}');
  });

  print('함수 완료');

}