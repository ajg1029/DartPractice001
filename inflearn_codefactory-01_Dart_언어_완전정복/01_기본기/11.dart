void main() {
  // Set

  final Set<String> names = {
    'han',
    'bin',
    'park', 
    'park',
  };

  print(names);

  names.add('deon');
  names.add('han');

  print(names);

  names.remove('bin');

  print(names);

  print(names.contains('ajg'));
}