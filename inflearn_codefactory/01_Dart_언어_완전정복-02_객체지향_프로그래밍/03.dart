void main() {
  // Idol BlackPink = Idol(DateTime.now().toString(), ['제니', '지수', '로제', '리사']);
  Idol BlackPink = const Idol(DateTime.now().toString(), ['제니', '지수', '로제', '리사']); // const 로 인해서 빌드타임에 알 수 없는 DateTime.now() 는 에러 처리
  // const 가 필요할 땐 붙이고, 필요하지 않을 땐 안 붙여도 되게끔 class 를 만들 수 있다.
  print(BlackPink.name);
  print(BlackPink.members);
  BlackPink.sayHello();
  BlackPink.introduce();



  Idol OhMyGirl = const Idol.fromList(['오마이걸', ['효정', '승희', '유아', '지호', '미미', '유빈', '아린']]);
  // fromList constructor 에는 const 를 안 붙였기 때문에 사용할 수 없다.
  print(OhMyGirl.name);
  print(OhMyGirl.members);
  OhMyGirl.sayHello();
  OhMyGirl.introduce();

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
