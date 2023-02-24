void main() {
  List<String> cloudstone = ['해피', '언', '디온'];
  List<int> nums = [1, 2, 34];
  
  print(cloudstone);
  print(nums);
  print(cloudstone[2]);
  print(cloudstone.length);

  cloudstone.add('디오오온');
  print(cloudstone);
  cloudstone.remove('언');
  print(cloudstone);
  print(cloudstone.indexOf('디온'));
}