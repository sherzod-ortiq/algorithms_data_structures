// Count the sum of even numbers in objects and nested objects

void main() {
  Map<dynamic, dynamic> obj1 = {
    'outer': 2,
    'obj': {
      'inner': 2,
      'otherObj': {'superInner': 2, 'notANumber': true, 'alsoNotANumber': "yup"}
    }
  };

  Map<dynamic, dynamic> obj2 = {
    'a': 2,
    'b': {
      'b': 2,
      'bb': {
        'b': 3,
        'bb': {'b': 2}
      }
    },
    'c': {
      'c': {'c': 2},
      'cc': 'ball',
      'ccc': 5
    },
    'd': 1,
    'e': {
      'e': {'e': 2},
      'ee': 'car'
    }
  };

  print(nestedEvenSum(obj1));
  print(nestedEvenSum(obj2));
}

class Hello {}

int nestedEvenSum(Map<dynamic, dynamic> obj) {
  int sum = 0;
  for (dynamic key in obj.keys) {
    if (obj[key] is int && obj[key] % 2 == 0) {
      sum += obj[key] as int;
    } else if (obj[key] is Map) {
      sum += nestedEvenSum(obj[key]);
    }
  }

  return sum;
}
