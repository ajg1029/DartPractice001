void main() {

  List<String> fizzy = ['사이다', '콜라', '환타'];

  final zeroFizzy = fizzy.map((x){
    return '제로 $x';
  });

  print(fizzy);
  print(zeroFizzy); // 이렇게 출력하면 iterable 형태로 출력된다.
  print(zeroFizzy.toList());
  
  final strongFizzy = fizzy.map((x) => '스트롱 $x');
  print(strongFizzy.toList());

  String numbers = '12345';
  final parsed = numbers.split('').map((x) => '$x.jpg');

  print(parsed);

}

