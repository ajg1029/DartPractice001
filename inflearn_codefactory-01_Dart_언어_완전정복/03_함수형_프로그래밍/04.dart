void main() {
  Set blackPinkSet = {
    '로제',
    '제니',
    '지수',
    '리사'
  };

  final newSet = blackPinkSet.map((x) => '블랙핑크 $x').toSet();

  print(newSet);

}