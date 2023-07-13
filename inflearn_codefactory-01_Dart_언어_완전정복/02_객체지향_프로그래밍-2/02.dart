void main() {
  
  Employee seulgi = Employee('슬기');
  Employee chorong = Employee('초롱');

  seulgi.name = '슬기2';
  seulgi.printNameAndBuilding();
  chorong.printNameAndBuilding();

  Employee.building = '오투타워';

  seulgi.printNameAndBuilding();
  Employee.printBuilding();
  
}

class Employee {
  // static 은 instance 에 귀속되지 않고 class 에 귀속된다.

  static String? building;
  
  String name;

  Employee(this.name);

  void printNameAndBuilding() {
    print('제 이름은 $name 입니다. $building에서 근무하고 있어요.');
  }

  static void printBuilding() {
    print('저희는 $building에서 근무하고 있습니다.');
  }
}