void main() {
  dynamic name = 'deon';
  print(name);

  dynamic number = 30;
  print(number);

  var name2 = 'hanbin';
  print(name2);

  print(name.runtimeType);
  print(name2.runtimeType);

  name = 10; // dynamic type 은 나중에 타입을 바꿀 수 있다.
  print(name);

  // name2 = 20; // var 로 선언한 건 타입 변경 불가능
  // print(name2);
}