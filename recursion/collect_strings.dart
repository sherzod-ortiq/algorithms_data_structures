// Collect strings from nested objects
void main() {
  Map<dynamic, dynamic> map = {
    'stuff': "foo",
    'data': {
      'val': {
        'thing': {
          'info': "bar",
          'moreInfo': {
            'evenMoreInfo': {'weMadeIt': "baz"}
          }
        }
      }
    }
  };

  print(collectStrings(map));
}

List<String> collectStrings(Map<dynamic, dynamic> map) {
  List<String> arr = [];
  for (dynamic key in map.keys) {
    if (map[key] is String) {
      arr.add(map[key]);
      continue;
    }
    if (map[key] is Map) arr = [...arr, ...collectStrings(map[key])];
  }
  return arr;
}
