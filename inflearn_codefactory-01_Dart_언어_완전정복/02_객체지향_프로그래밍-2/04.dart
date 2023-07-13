void main() {
  BoyGroup bts = BoyGroup('방탄소년단');
  bts.sayName();

  print(bts is BoyGroup);
  print(bts is IdolInterface);
}

// abstract 키워드를 쓰면 인스턴스화를 못하게 막을 수 있다.
abstract class IdolInterface {
  String name;
  IdolInterface(this.name);
  void sayName(); // abstract 를 쓰면 클래스 내부 함수(메서드)의 바디를 지워도 에러로 여기지 않는다.
}

class BoyGroup implements IdolInterface {
  String name;
  BoyGroup(this.name);
  void sayName() {
    print('$name 입니다.');
  }
}