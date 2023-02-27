void main() {
  

}

class Idol {
  String name;
  int membersCount;

  Idol({
    required this.name,
    required this.membersCount,
  });

  void sayName() {
    print('저는 ${this.name}입니다.');
  }

  void sayMembersCount() {
    print('${this.name}은 ${this.membersCount}명의 멤버가 있습니다.');
  }
}