void main() {
  List<String> devTeam = ['제이', '쑤', '제리', '디온', '디온'];
  
  print(devTeam);
  print(devTeam.asMap());
  print(devTeam.toSet());

  Map devTeamMap = devTeam.asMap();

  print(devTeamMap.keys);
  print(devTeamMap.keys.toList());
  print(devTeamMap.values);
  print(devTeamMap.values.toList());

  Set devTeamSet = Set.from(devTeam);
  print(devTeamSet);
  print(devTeamSet.toList());
}