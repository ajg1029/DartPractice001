void main() {
  int number1 = 3;
  
  print(number1 is int);
  print(number1 is String);
  print(number1 is! String);

  bool result = 12 > 10 && 1 > 0;
  print(result);

  bool result2 = 12 > 10 && 0 > 1;
  print(result2);

  bool result3 = true || false;
  print(result3);
}