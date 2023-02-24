void main() {
  int total = 0;

  while(total < 10) { // 확인하고
    total += 1; // 그 다음에 실행
  };

  print(total);

  // total = 0;

  // do {
  //   total += 1; // 일단 실행하고
  // } while (total < 10); // 그 다음에 확인

  // print(total);

  // do while 은 잘 안 쓴다...


  total = 0;

  while(total < 10) {
    total += 1;
    if (total == 5) {
      break;
    }
  };

  print(total);

  total = 0;
  for (int i = 0; i < 10; i++) {
    total += 1;
    if (total == 8) {
      break;
    }
  }
  print(total);


}