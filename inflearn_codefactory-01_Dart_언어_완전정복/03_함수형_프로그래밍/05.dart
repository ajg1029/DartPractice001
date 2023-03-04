void main() {
  List<Map<String, String>> people = [
    {
      'name': '로제',
      'team': '블핑'
    },
    {
      'name': '지수',
      'team': '블핑'
    },
    {
      'name': '알엠',
      'team': '방탄'
    },
    {
      'name': '슈가',
      'team': '방탄'
    }
  ];
  print(people);

  final bts = people.where((element) => element['team'] == '방탄').toList();
  print(bts);
}