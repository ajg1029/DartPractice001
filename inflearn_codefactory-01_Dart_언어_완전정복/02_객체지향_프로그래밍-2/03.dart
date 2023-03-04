void main() {
  BoyGroup bts = BoyGroup('방탄소년단');
  bts.sayName();
}

// interface
// 클래스 내부 속성 (시그니처?)를 맞출 것을 강제(?)하는 역할
// IdolInterface 는 인스턴스로 만들지 않음! -> 내부에 뭘 만들어놓을 필요 없음. 메서드라든지 등등
class IdolInterface {
  String name;
  IdolInterface(this.name);
  void sayName() {}
}

class BoyGroup implements IdolInterface {
  String name;
  BoyGroup(this.name);
  void sayName() {
    print('$name 입니다.');
  }
}