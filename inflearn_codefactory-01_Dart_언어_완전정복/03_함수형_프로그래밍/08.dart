void main() {
  List<String> words = ['밥', '은', '먹', '고', '다', '니냐'];

  final sentence = words.fold<String>('', (previousValue, element) => previousValue + element);

  print(sentence);

  final count = words.fold<int>(0, (previousValue, element) => previousValue + element.length);

  print(count);


}