// void main() {
//   for (int i = 0; i < 5; i++) {
//     print('hello ${i + 1}');
//   }
// }

bool isEmpty(String? string) => string?.length == 0;
void main() {
  print(isEmpty('qwe'));
  print(isEmpty(null));
}