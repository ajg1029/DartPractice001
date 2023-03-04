void main() {
  Lecture<String> lecture1 = Lecture('0001', '강의1');
  lecture1.printIdType();

  Lecture<int> lecture2 = Lecture(0002, '강의2');
  lecture2.printIdType();
}

// generic 타입을 외부에서 받을 때 사용
class Lecture<Type> {
  final Type id;
  final String name;
  
  Lecture(this.id, this.name);

  void printIdType() {
    print(id.runtimeType);
  }
}