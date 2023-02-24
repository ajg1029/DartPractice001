// getter, setter

void main() {
  Idol NewJeans = Idol('뉴진스', ['민지', '하니', '다니엘', '해린', '혜인']);

  Idol BlackPink = Idol('블랙핑크', ['제니', '지수', '로제', '리사']);

  Idol OhMyGirl = Idol.fromList(['오마이걸', ['효정', '승희', '유아', '지호', '미미', '유빈', '아린']]);

  print(NewJeans.firstMember); // getter
  print(OhMyGirl.firstMember); // getter

  OhMyGirl.firstMember = '쩡이언니'; // setter

  print(OhMyGirl.firstMember);
  
}

class Idol {
  String name;
  List<String> members;
  Idol(this.name, this.members);
  Idol.fromList(List values): this.name = values[0], this.members = values[1];

  void sayHello() {
    print('안녕하세요 ${this.name} 입니다.');
  }
  void introduce() {
    print('저희 팀에는 ${this.members} 이/가 있습니다.');
  }

  // getter
  String get firstMember {
    return this.members[0];
  }

  // setter
  set firstMember(String name) {
    this.members[0] = name;
  }


}
