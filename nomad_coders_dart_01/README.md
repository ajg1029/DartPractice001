#### 2023-02-17

##### 1.

Dart 는 두 종류의 컴파일러를 가지고 있다. 하나는 Dart Web. 이것은 Dart 코드를 JavaScript로 변환해준다. 또 다른 하나는 Dart Native. 코드를 CPU의 아키텍쳐에 맞게 변환해준다. ARM32, ARM64, x86_64

저전력 동작 가능 -> 사물인터넷에도 적용한다.

개발 중에는 Dart 가상머신이 jit 컴파일러 제공 (just-in-time) - 프로그램의 속도는 느리지만, 코드 수정의 결과를 바로바로 확인할 수 있다. 개발이 끝나면 VM을 통하지 않고, aot 컴파일러 사용. (ahead-of-time)

null safety : 더 안전한 프로그램 ...

##### 2. 변수(var, String, dynamic, ...), null safety

```dart
void main() {
    String name = '디온';
    name = 'deon';

    var age = 10;
    age = 15;

    var what1;
    dynamic what2;
}
```

```dart
bool isEmpty(String string) => string.length == 0;
main() {
    print(isEmpty(null));
    print(isEmpty('asdf'));
}
```

위의 코드는 런타임 에러를 발생시킨다. 컴파일러가 잡지 못하는, 사용자 기기에서 발생하는 에러

```dart
void main() {
    String? name = 'deon'; // name 은 기본적으로 string 이지만, null 이 될 수도 있음 (null safety)
    name = null;
    if (name != null) {
        name.isNotEmpty;
    }
    name.isNotEmpty;
}
```

```dart
void main() {
    String? name = 'deon'; // name 은 기본적으로 string 이지만, null 이 될 수도 있음 (null safety)
    name = null;
    name.isNotEmpty;
    name?.isNotEmpty; // name 이 null이 아닐 경우에만 isNotEmpty 속성을 사용
}
```

dart 의 변수는 기본적으로 nullable 이 아니다! nullable 로 만들고 싶으면 ? 를 넣자

##### 3. 변수(final), late

```dart
void main() {
    final name = 'deon';
    name = 'hanbin'; // final 로 만든 변수는 수정 불가
}
```

```dart
void main() {
    // late 는 초기 데이터 없이 변수를 선언할 수 있게 해준다.
    // late final String name;
    final String name;
    // do something, maybe with API
    print(name)
    name = 'deon';
    print(name);
}
// 변수를 먼저 만들고 나중에 값을 할당하는 경우에 사용
// late 가 없어도 작동되는 걸 보니, 최근에 업데이트된 부분인 듯하다.
```

##### 5. Constant Variables

dart 의 const 는 js 나 ts 와 다르다.
js, ts 의 const 는 dart 의 final 이랑 비슷
dart 에서 const 는 compile-time constant 를 만들어준다. (compile-time 에 알고 있는 값이어야 한다?)
api key 를 받아온다든지, 사용자가 입력한다든지, 컴파일 과정에서 컴파일러가 모르는 값을 저장할 때는 final 또는 var 사용
const 는 컴파일 과정에서 알고 있는 값에다가 사용하는 것
(앱스토어에 앱을 올리기 전에 알고 있는 값!)

##### 6. recap

```dart
void main() {
    int i = 12;
    String name = 'deon';

    var value = '10';
    // value = 10;
    // value = null;

    int width = 100;
    width = null;
    int? height = 10;
    height = null;

    dynamic value2 = 'asdf';
    value2 = true;
    value2 = null;
    value2 = 1029;

    final value3 = 'qwe';
    value3 = 'asd';

}

// dart 의 스타일 가이드에 따르면, var 를 가능한 한 많이 사용하는 게 권장되고,
// 타입을 명시해서 사용하는 방식은, class 의 property 를 작성할 때 사용하는 것으로 권장된다.
// 메소드나 작은 함수 안에서 지역 변수를 선언할 때는 var 를 사용하는 게 더 좋다.

// dynamic
// 조심스럽게 사용. 어떤 데이터가 들어올지 모른다고오오
```

##### 7. 자료형

```dart
void main() {
    String name = 'deon';
    bool faithful = true;
    int koreanAge = 30;
    double hopeWeight = 77.9;

    // 모든 자료형들은, 그리고 dart 의 모든 것들은 object 로 이루어져있다. 심지어는 function 도

    // int 랑 double 은 사실 num 을 상속받는다.
    num x = 12; // type 이 int 로 뜬다
    x = 12.12; // 여기에서는 double 로 뜬다

    // 자동완성을 잘 봅시다잇
    String model = 'K5';
    // model.
    int price = 20000000;
    // price.

}
```

##### 8. 자료형 (Lists)

```dart
void main() {
    var numbers = [1, 2, 3, 4,];

    List<int> numbers2 = [5, 6, 7, 8,];
    numbers2.add(1);
    numbers2.add('asdf'); // 안 됨. 타입땜시

    numbers.add('qwe'); // 이거도 안 되네

    // 자동완성을 보렴. 무얼 할 수 있는지
    // numbers.
    print(numbers.last);

    // dart 에서 list 의 멋진 점은 collection if 와 collection for 를 지원하는 거라고?

}
```



```dart
void main() {
    var giveMeFive = false;
    var giveMeSix = true;
    var numbers = [
        1,
        2,
        3,
        4,
        if (giveMeFive) 5,
        if (giveMeSix) 6,
    ];
    print(numbers);
}
```


