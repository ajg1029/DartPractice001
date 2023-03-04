void main() {
  List<int> numbers = [2, 5, 9, 11, 38];

  final sum = numbers.fold(0, (previousValue, element) { // initial value 0 에서부터 시작
    print('----------');
    print('previousValue : $previousValue');
    print('element : $element');
    print('total : ${previousValue + element}');
    return previousValue + element;
  });

  print(sum);
}