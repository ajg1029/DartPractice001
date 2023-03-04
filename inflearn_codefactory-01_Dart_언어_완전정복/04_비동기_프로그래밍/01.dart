void main() {
  // Future
  // 미래에 받아올 값

  Future<String> name = Future.value('Deon');
  Future<int> number = Future.value(1);
  Future<bool> isTrue = Future.value(true);

  print('start');

  // 2개의 파라미터
  // delayed
  // 파라미터 1 - duration
  // 파라미터 2 - 함수

  Future.delayed(Duration(seconds: 2), (){
    print('... ...');
  });

}