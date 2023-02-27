void main() {
  _Idol NewJeans = _Idol('뉴진스', ['민지', '하니', '다니엘', '해린', '혜인']);

  print(NewJeans.firstMember); // getter
  
}

// class 앞에 _ 를 붙이면 private, 다른 파일에서 사용할 수 없게 된다.

class _Idol {
  String name;
  List<String> members;
  _Idol(this.name, this.members);
  _Idol.fromList(List values): this.name = values[0], this.members = values[1];

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


}
