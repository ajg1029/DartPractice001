void main() {
  var name = 'deon';
  print(name);
  name = 'hanbin';
  print(name);

  int number1 = 10;
  print(number1);

  double number2 = 0.5;
  int number3 = 20;
  print((number1 / number3).runtimeType);

  bool really = true;
  print(really);

  String name1 = 'asdf';
  
  Map<String, Map<int, List<double>>> testType = {}; // 왓더뻑
  print(testType.runtimeType);
}