// Find the biggest sum of n consecutive elements of unsorted integer array

void main() {
  Stopwatch stopwatch1 = Stopwatch()..start();
  print(maxSubarraySum1([1, 2, 5, 2, 8, 1, 5], 2));
  print(maxSubarraySum1([1, 2, 5, 2, 8, 1, 5], 4));
  print(maxSubarraySum1([4, 2, 1, 6], 1));
  print(maxSubarraySum1([4, 2, 1, 6, 2], 4));
  print(maxSubarraySum1([], 4));
  print('maxSubarraySum1() executed in ${stopwatch1.elapsed}');
  stopwatch1.stop();

  Stopwatch stopwatch2 = Stopwatch()..start();
  print(maxSubarraySum2([1, 2, 5, 2, 8, 1, 5], 2));
  print(maxSubarraySum2([1, 2, 5, 2, 8, 1, 5], 4));
  print(maxSubarraySum2([4, 2, 1, 6], 1));
  print(maxSubarraySum2([4, 2, 1, 6, 2], 4));
  print(maxSubarraySum2([], 4));
  print('maxSubarraySum2() executed in ${stopwatch2.elapsed}');
  stopwatch2.stop();
}

// O(n) complexity
int? maxSubarraySum2(List<int> arr, int n) {
  if (arr.length < n) return null;
  int bigSum = 0;

  for (int i = 0; i < n; i++) {
    bigSum += arr[i];
  }

  for (int j = n; j < arr.length; j++) {
    if (bigSum < (bigSum - arr[j - n] + arr[j]))
      bigSum = (bigSum - arr[j - n] + arr[j]);

    j++;
  }

  return bigSum;
}

// O(n^2) complexity
int? maxSubarraySum1(List<int> arr, int n) {
  if (arr.length < n) return null;
  int? bigSum = null;

  for (int i = 0; i <= arr.length - n; i++) {
    int sum = 0;
    for (int j = i; j < i + n; j++) {
      sum += arr[j];
    }
    if (bigSum == null) {
      bigSum = sum;
    } else {
      if (bigSum < sum) bigSum = sum;
    }
  }

  return bigSum;
}
