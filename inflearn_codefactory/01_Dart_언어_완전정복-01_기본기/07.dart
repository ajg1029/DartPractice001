void main() {
  double? number = 4.0;
  print(number);
  number = 2.0;
  print(number);
  number = null;
  print(number);
  number ??= 3.0; // number 가 null 일 경우 number 에 3.0 을 넣어라
  print(number);

}