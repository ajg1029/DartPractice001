void main() {
  String name1 = 'asdf';
  name1 = 'qwe';
  
  final String name2 = 'zxcv';
  // name2 = 'jkl'; // final 로 선언하면 값을 바꿀 수 없다.

  const String name3 = 'deon';
  // name3 = 'hanbin'; // const 도 마찬가지

  final name4 = 'cloudstone'; // var, String 등 생략 가능

  DateTime whattimenow = DateTime.now();
  print(whattimenow);

  final now1 = DateTime.now();
  // const now2 = DateTime.now(); // const 는 build-time 에 값을 알고 있어야 한다.
}