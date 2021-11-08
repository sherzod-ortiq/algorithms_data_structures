// Convert all the number values to string

void main() {
  Map<dynamic, dynamic> map = {
    'num': 1,
    'test': [],
    'data': {
      'val': 4,
      'info': {'isRight': true, 'random': 66}
    }
  };
  print(stringifyNumbers2(map));
  print(map);

  stringifyNumbers(map);
  print(map);
}

// Alters original map
Map<dynamic, dynamic> stringifyNumbers2(Map<dynamic, dynamic> map) {
  Map<dynamic, dynamic> funcMap = {};
  for (dynamic key in map.keys) {
    if (map[key] is num) {
      funcMap[key] = map[key].toString() +
          'HELLO'; // just to prove that we converted to string
      continue;
    }
    if (map[key] is Map) funcMap[key] = stringifyNumbers2(map[key]);
  }
  return funcMap;
}

// Alters original map
void stringifyNumbers(Map<dynamic, dynamic> map) {
  for (dynamic key in map.keys) {
    if (map[key] is num) {
      map[key] = map[key].toString() +
          'HELLO'; // just to prove that we converted to string
      continue;
    }
    if (map[key] is Map) stringifyNumbers(map[key]);
  }
}
