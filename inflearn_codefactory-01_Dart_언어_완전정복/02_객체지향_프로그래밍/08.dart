void main() {
  Idol apink = Idol(name: '에이핑크', membersCount: 5);
  apink.sayName();
  apink.sayMembersCount();

  BoyGroup bts = BoyGroup('방탄소년단', 7);

  bts.sayName();
  bts.sayMembersCount();
  bts.sayBoy();

  print(apink is Idol);
  print(apink is BoyGroup);
  print(bts is Idol);
  print(bts is BoyGroup);
  

}

class Idol {
  String name;
  int membersCount;

  Idol({
    required this.name,
    required this.membersCount,
  });

  void sayName() {
    print('저희는 ${this.name}입니다.');
  }

  void sayMembersCount() {
    print('${this.name}은 ${this.membersCount}명의 멤버가 있습니다.');
  }
}

class BoyGroup extends Idol{
  BoyGroup(
    String name,
    int membersCount
  ) : super(
    name: name,
    membersCount: membersCount,
  );

  void sayBoy(){
    print('남자 아이돌');
  }

}