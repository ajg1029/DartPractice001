void main() {
  List<int> even = [2, 4, 6];
  List<int> odd = [1, 3, 5];

  // cascading operator

  print([even, odd]);
  print([...even, ...odd]);
}