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

  // 프론트에서 데이터를 다룰 때 구조화해서 사용하지 않으면 에러의 가능성이 생긴다.

  print(people);

  final parsedPeople = people.map(
    (x) => Person(
      namae: x['name']!,
      teamu: x['team']!
    )
  ).toList(); // toList() 없으면 타입이 MappedListIterable 로 나오는군...

  print(parsedPeople);
  print(parsedPeople.runtimeType);

  for (Person person in parsedPeople) {
    print(person.namae);
    print(person.teamu);
  }

  final bts = parsedPeople.where(
    (x) => x.teamu == '방탄'
  );

  print(bts);

  final bp = people.map(
    (x) => Person(
      namae: x['name']!,
      teamu: x['team']!
    )
  ).where((element) => element.teamu == '블핑');

  print(bp);

  final blackpink = people.map(
    (x) => Person(
      namae: x['name']!,
      teamu: x['team']!
    )
  )
  .where((element) => element.teamu == '블핑')
  .fold<int>(
    0,
    (prev, el) => prev + el.namae.length
  );

  print(blackpink);


}

class Person{
  final String namae;
  final String teamu;

  Person({
    required this.namae,
    required this.teamu
  });

  @override
  String toString(){
    return 'PERSON($teamu의 $namae)';
  }

}