void main() {
  Map<String, String> dictionary = {
    'Harry Potter': '입 닥쳐 말포이',
    '타짜': '묻고 더블로 가'
  };
  print(dictionary); 

  Map<String, bool> isHarryPotter = {
    '해뤼': true,
    '뤈': true,
    '토니스탉크': false,
    '허마이늬': true,
  };

  print(isHarryPotter);

  isHarryPotter.addAll({
    '박동훈': false
  });

  print(isHarryPotter);

  print(isHarryPotter['토니스탉크']);

  isHarryPotter['이지안'] = false;

  print(isHarryPotter);

  isHarryPotter['해뤼'] = false;

  print(isHarryPotter);

  isHarryPotter.remove('뤈');

  print(isHarryPotter);

  print(isHarryPotter.keys);
  print(isHarryPotter.values);

}