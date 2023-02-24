void main() {
  Operationn operation = add;

  int result = operation(1,2,3);
  print(result);

  operation = sub;

  int result2 = operation(5, 1, 1);
  print(result2);

  int result3 = calculate(6, 6, 6, add);
  print(result3);

}

typedef Operationn = int Function(int x, int y, int z);

int add(int x, int y, int z) => x + y + z;

int sub(int x, int y, int z) => x - y - z;

int calculate(int x, int y, int z, Operationn operation) {
  return operation(x, y, z);
}