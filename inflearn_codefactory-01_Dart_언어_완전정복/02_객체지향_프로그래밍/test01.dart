void main() {
  KPopBand OhMyGirl = const KPopBand('오마이걸', ['효정', '유아', '승희', '지호', '미미', '유빈', '아린'], '찾았다~ 오마이걸!');
  OhMyGirl.greeting();
  
}

class KPopBand{
  final String name;
  final List<String> members;
  final String intro;

  const KPopBand(this.name, this.members, this.intro);

  void greeting() {
    print('${this.intro} 안녕하세요! ${this.name}입니다!');
  }

  void leaderIntroduce() {
    print('안녕하세요 ${this.name}의 리더를 맡고 있는 ${this.members[0]} (이)라고 합니다');
  }
}