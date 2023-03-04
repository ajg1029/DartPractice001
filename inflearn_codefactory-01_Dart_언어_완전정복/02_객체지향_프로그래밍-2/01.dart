void  main() {
  TimesTwo tt = TimesTwo(2);
  print(tt);
  print(tt.calculate());

  TimesFour tf = TimesFour(2);
  print(tf.calculate());

  TimesSix ts = TimesSix(2);
  print(ts.calculate());

}

// method - class 내부에 있는 함수
// override

class TimesTwo {
  final int number;

  TimesTwo(this.number);

  // method
  int calculate() {
    // return this.number * 2; // method 내부에 같은 이름으로 중복되는 변수가 있는 게 아니라면, this 를 생략하고 사용해도 된다.
    return number * 2;
  }
}

class TimesFour extends TimesTwo {
  TimesFour(int number) : super(number);

  @override
  int calculate() {
    // return super.number * 4; // 부모 class 의 속성이기 때문에 super를 쓰는 게 맞음
    // return this.number * 4; // 그런데 상속을 받아왔으니까 내 속성이기도 해서 this 를 써도 됨
    // return number * 4; // this 는 생략이 가능

    return super.number * 4; // 정석은 super 를 쓰는 거다.
  }
}

class TimesSix extends TimesTwo {
  TimesSix(int number) : super(number);

  @override // override 구문은 생략 가능하지만 써주는 게 좋다.
  int calculate() {
    return super.calculate() * 3; // 여기에서는 this 를 쓰면 안 됨. 부모의 calculate 를 불러와야만 하니깐
  }
}