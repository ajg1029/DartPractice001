void main() {
  Map<String, String> harryPotter = {
    'Harry': '해리',
    'Ron': '론',
    'Hermione': '헤르미온느'
  };

  final result  = harryPotter.map(
    (key, value) => MapEntry(
      '원작 이름 $key',
      '한국어 번역 $value'
    )
  );

  print(harryPotter);
  print(result);

  final keys = harryPotter.keys.map((x) => '키값 $x').toList();
  final values = harryPotter.values.map((x) => '밸류값 $x').toList();
  print(keys);
  print(values);
}