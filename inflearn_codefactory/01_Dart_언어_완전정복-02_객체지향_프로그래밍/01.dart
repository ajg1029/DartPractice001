void main() {
  Idol NewJeans = Idol('뉴진스', ['민지', '하니', '다니엘', '해린', '혜인']);
  print(NewJeans.name);
  print(NewJeans.members);
  NewJeans.sayHello();
  NewJeans.introduce();


  Idol BlackPink = Idol('블랙핑크', ['제니', '지수', '로제', '리사']);
  print(BlackPink.name);
  print(BlackPink.members);
  BlackPink.sayHello();
  BlackPink.introduce();


  // named constructor 
  Idol OhMyGirl = Idol.fromList(['오마이걸', ['효정', '승희', '유아', '지호', '미미', '유빈', '아린']]);
  print(OhMyGirl.name);
  print(OhMyGirl.members);
  OhMyGirl.sayHello();
  OhMyGirl.introduce();
}

class Idol {
  String name;
  List<String> members;

  // Idol(String name, List<String> members): this.name = name, this.members = members; // 이렇게 안하고, 아래처럼 더 간단하게!
  Idol(this.name, this.members);

  Idol.fromList(List values): this.name = values[0], this.members = values[1];

  void sayHello() {
    print('안녕하세요 ${this.name} 입니다.');
  }
  void introduce() {
    print('저희 팀에는 ${this.members} 이/가 있습니다.');
  }
}
