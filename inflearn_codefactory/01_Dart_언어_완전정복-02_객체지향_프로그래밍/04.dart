void main() {

  // Idol BlackPink = Idol(DateTime.now().toString(), ['제니', '지수', '로제', '리사']);
  // print(BlackPink.name);
  // print(BlackPink.members);
  // BlackPink.sayHello();
  // BlackPink.introduce();
  // Idol BlackPink2 = Idol(DateTime.now().toString(), ['제니', '지수', '로제', '리사']);
  // print(BlackPink2.name);
  // print(BlackPink2.members);
  // BlackPink2.sayHello();
  // BlackPink2.introduce();
  // print(BlackPink == BlackPink2); // false


  Idol BlackPink = const Idol('블핑', ['제니', '지수', '로제', '리사']);
  print(BlackPink.name);
  print(BlackPink.members);
  BlackPink.sayHello();
  BlackPink.introduce();
  Idol BlackPink2 = const Idol('블핑', ['제니', '지수', '로제', '리사']);
  print(BlackPink2.name);
  print(BlackPink2.members);
  BlackPink2.sayHello();
  BlackPink2.introduce();
  print(BlackPink == BlackPink2); // const 를 썼더니 true !



}

class Idol {
  final String name;
  final List<String> members;

  const Idol(this.name, this.members);

  Idol.fromList(List values): this.name = values[0], this.members = values[1];

  void sayHello() {
    print('안녕하세요 ${this.name} 입니다.');
  }
  void introduce() {
    print('저희 팀에는 ${this.members} 이/가 있습니다.');
  }
}
