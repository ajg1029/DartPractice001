void main() async {

  final result1 = await addNumbers(1, 1);
  final result2 = await addNumbers(2, 2);

  print('result1 + result2 = ${result1 + result2}');


}

Future<int> addNumbers(int number1, int number2) async {
  print('계산 시작 : $number1 + $number2');

  await Future.delayed(Duration(seconds: 3), (){
    print('계산 완료 : $number1 + $number2 = ${number1 + number2}');
  });

  print('함수 완료');

  return number1 + number2;

}