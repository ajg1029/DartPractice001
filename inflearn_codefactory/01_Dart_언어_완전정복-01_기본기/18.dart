void main() {
  namedParameter(x: 10, y: 20, z: 100);
  namedParameter(x: 1, y: 2);
  int result = namedParameter2(x: 3, y: 4);
  print('result : $result');
  namedParameter3(10, y: 10);

}

// void 는 반환값이 없다는 뜻
// namedParameter 앞에 void 가 생략돼있는 것과 마찬가지임
namedParameter({
  required int x,
  required int y,
  int z = 3
}) {
  int sum = x + y + z;

  print('x : $x');
  print('y : $y');
  print('z : $z');
}



int namedParameter2({required int x, required int y, int z = 3}) {
  int sum = x + y + z;

  print('x : $x');
  print('y : $y');
  print('z : $z');

  return x + y + z;
}


namedParameter3(int x, {required int y, int z = 15}) {
  int sum = x + y + z;

  print('x : $x');
  print('y : $y');
  print('z : $z');
}