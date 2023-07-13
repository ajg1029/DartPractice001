void main() {
  List<int> numbers = [1, 4, 9, 16, 23];

  final result1 = numbers.reduce((prev, next) {
    print('----------');
    print('prev : $prev');
    print('next : $next');
    print('total : ${prev + next}');
    return prev + next;
  });

  print(result1);

  final result2 = numbers.reduce((prev, next) => prev + next);
  
  print(result2);

  List<String> words = ['밥', '먹', '었', '니'];
  
  final result3 = words.reduce((prev, next) => prev + next);

  print(result3);

  // final result4 = words.reduce((prev, next) => prev.length + next.length); // reduce 를 통해 반환되는 값의 타입과 리스트 내부 타입이 다르면 안 된다.

  final result4 = words.reduce((prev, next) {
    print(prev);
    print(prev.length);
    print(next);
    print(next.length);
    return (prev.length + next.length).toString();
  });
  // 이렇게 하면 되긴 된다 ^^;;;

  print(result4);
}