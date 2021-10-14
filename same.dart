// Check whether second array contains all the squared values from the first array
void main() {
  final stopwatch1 = Stopwatch()..start();
  print(same1([5, 1, 2, 3, 3, 4, 1, 1, 2, 3, 3, 4, 1],
      [7, 9, 4, 1, 9, 9, 9, 9, 1, 16, 9, 4, 1, 9, 9, 9, 9, 1, 16]));
  print('same1() executed in ${stopwatch1.elapsed}');
  stopwatch1.stop();

  final stopwatch2 = Stopwatch()..start();
  print(same2([5, 1, 2, 3, 3, 4, 1, 1, 2, 3, 3, 4, 1],
      [7, 9, 4, 1, 9, 9, 9, 9, 1, 16, 9, 4, 1, 9, 9, 9, 9, 1, 16]));
  print('sam2() executed in ${stopwatch2.elapsed}');
  stopwatch2.stop();

  final stopwatch3 = Stopwatch()..start();
  print(same3([5, 1, 2, 3, 3, 4, 1, 1, 2, 3, 3, 4, 1],
      [7, 9, 4, 1, 9, 9, 9, 9, 1, 16, 9, 4, 1, 9, 9, 9, 9, 1, 16]));
  print('sam3() executed in ${stopwatch3.elapsed}');
  stopwatch3.stop();
}

bool same3(List<int> array1, List<int> array2) {
  Map<int, int> array1Map = {};
  Map<int, int> array2Map = {};

  for (int num in array1) {
    array1Map[num] == null
        ? array1Map[num] = 1
        : array1Map[num] = array1Map[num]! + 1;
  }

  for (int num in array2) {
    array2Map[num] == null
        ? array2Map[num] = 1
        : array2Map[num] = array2Map[num]! + 1;
  }

  for (int key in array1Map.keys) {
    if (array2Map[key * key] != array1Map[key]) {
      return false;
    }
  }

  return true;
}

bool same2(List<int> array1, List<int> array2) {
  if (array1.length > array2.length) return false;
  int trueCount = 0;
  Map<int, List<int>> historyMap = {};

  for (int i = 0; i < array1.length; i++) {
    for (int n = 0; n < array2.length; n++) {
      if (array2[n] == array1[i] * array1[i]) {
        if (historyMap[array1[i]] == null) {
          historyMap[array1[i]] = [n];
          trueCount++;
          break;
        } else if (!historyMap[array1[i]]!.contains(n)) {
          historyMap[array1[i]]!.add(n);
          trueCount++;
          break;
        }
      }
    }
    if (trueCount == i) return false;
  }

  return true;
}

bool same1(List<int> array1, List<int> array2) {
  if (array1.length > array2.length) return false;
  int trueCount = 0;
  Map<int, List<int>> historyMap = {};

  for (int i = 0; i < array1.length; i++) {
    for (int n = 0; n < array2.length; n++) {
      if (array2[n] == array1[i] * array1[i]) {
        if (historyMap[array1[i]] == null) {
          historyMap[array1[i]] = [n];
          trueCount++;
          break;
        } else if (!historyMap[array1[i]]!.contains(n)) {
          historyMap[array1[i]]!.add(n);
          trueCount++;
          break;
        }
      }
    }
  }

  if (trueCount == array1.length) {
    return true;
  } else {
    return false;
  }
}
