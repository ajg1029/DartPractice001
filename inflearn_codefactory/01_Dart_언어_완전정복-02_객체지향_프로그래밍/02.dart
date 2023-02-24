void main() {
  Idol BlackPink = Idol('블랙핑크', ['제니', '지수', '로제', '리사']);

  BlackPink.name = '흑분홍'; // class 안에 final 을 써서 외부에서 변경하지 못하도록 한다.
  print(BlackPink.name);
  print(BlackPink.members);
  BlackPink.sayHello();
  BlackPink.introduce();

}

class Idol {
  // immutable 하게 만들기 위해 final 사용
  final String name;
  final List<String> members;

  Idol(this.name, this.members);

  Idol.fromList(List values): this.name = values[0], this.members = values[1];

  void sayHello() {
    print('안녕하세요 ${this.name} 입니다.');
  }
  void introduce() {
    print('저희 팀에는 ${this.members} 이/가 있습니다.');
  }
}
