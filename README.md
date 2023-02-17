

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

위의 코드는 런타임 에러를 발생시킨다. 컴파일러가 잡지 못하는, 사용자 기기에서 발생하는 에러

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



##### 3. 변수(final)




