import 'dart:math';

// Find the minimum subarray length the sum of elements of which is greater or equal to the provided number
void main() {
  print(minSubArrayLen([2, 3, 1, 2, 4, 3], 7));
  print(minSubArrayLen([2, 1, 6, 5, 4], 9));
  print(minSubArrayLen([3, 1, 7, 11, 2, 9, 8, 21, 62, 33, 19], 52));
  print(minSubArrayLen([1, 4, 16, 22, 5, 7, 8, 9, 10], 39));
  print(minSubArrayLen([1, 4, 16, 22, 5, 7, 8, 9, 10], 55));
  print(minSubArrayLen([4, 3, 3, 8, 1, 2, 3], 11));
  print(minSubArrayLen([1, 4, 16, 22, 5, 7, 8, 9, 10], 95));

  print(minSubArrayLen1([2, 3, 1, 2, 4, 3], 7));
  print(minSubArrayLen1([2, 1, 6, 5, 4], 9));
  print(minSubArrayLen1([3, 1, 7, 11, 2, 9, 8, 21, 62, 33, 19], 52));
  print(minSubArrayLen1([1, 4, 16, 22, 5, 7, 8, 9, 10], 39));
  print(minSubArrayLen1([1, 4, 16, 22, 5, 7, 8, 9, 10], 55));
  print(minSubArrayLen1([4, 3, 3, 8, 1, 2, 3], 11));
  print(minSubArrayLen1([1, 4, 16, 22, 5, 7, 8, 9, 10], 95));
}

int minSubArrayLen1(List<int> arr, int provNum) {
  if (arr.length == 0) return 0;
  if (arr.length == 1) return arr[0] == provNum ? 1 : 0;

  int start = 0;
  int end = 0;
  int sumArrSum = 0;
  int minLength = arr.length + 1;

  while (end < arr.length) {
    if (sumArrSum >= provNum) {
      minLength = min(minLength, end - start);
      sumArrSum -= arr[start++];
      continue;
    }

    sumArrSum += arr[end++];

    if (end >= arr.length) {
      if (sumArrSum - arr[start] >= provNum) {
        minLength = min(minLength, end - (start + 1));
      }
    }
  }

  return minLength > arr.length ? 0 : minLength;
}

int minSubArrayLen(List<int> arr, int provNum) {
  if (arr.length == 0) return 0;
  if (arr.length == 1) return arr[0] >= provNum ? 1 : 0;

  int subArrSum = 0;
  int pointer = 0;
  int minLength = 0;

  // First subarray
  while (pointer < arr.length) {
    subArrSum += arr[pointer];
    if (subArrSum < provNum) {
      pointer++;
    } else {
      break;
    }
  }

  if (subArrSum < provNum) return minLength;

  minLength = pointer + 1;

  for (int i = minLength; i < arr.length; i++) {
    // Shrink the subarray
    while (subArrSum - arr[i - minLength] >= provNum) {
      subArrSum -= arr[i - minLength];
      minLength--;
    }

    subArrSum = subArrSum - arr[i - minLength] + arr[i];

    if ((i + 1 >= arr.length) &&
        (subArrSum - arr[i - minLength + 1] >= provNum)) {
      minLength--;
    }
  }

  return minLength;
}
