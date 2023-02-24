void main() {
  addNumbers(1, 5, 3);
  addNumbers(4, 2, 30);
  addNumbers(7, 7, 9);
  optionalParameter1(10); // y 랑 z 는 기본값
  optionalParameter1(10, 7, 7); // y 랑 z 의 기본값 무시
  optionalParameter2(10, 7, 7);
  optionalParameter2(10); // y 랑 z 가 null 이라서 오류 뜸
}

addNumbers(int x, int y, int z) {
  int sum = x + y + z;
  print('x : $x');
  print('y : $y');
  print('z : $z');

  if (sum % 2 == 0) {
    print('짝수입니다.');
  } else {
    print('홀수입니다.');
  }

}

optionalParameter1(int x, [int y = 10, int z = 10]) {
  int sum = x + y + z;
  print('x : $x');
  print('y : $y');
  print('z : $z');

  if (sum % 2 == 0) {
    print('짝수입니다.');
  } else {
    print('홀수입니다.');
  }
}

optionalParameter2(int x, [int? y, int? z]) {
  int sum = x + y! + z!;
  print('x : $x');
  print('y : $y');
  print('z : $z');

  if (sum % 2 == 0) {
    print('짝수입니다.');
  } else {
    print('홀수입니다.');
  }
}