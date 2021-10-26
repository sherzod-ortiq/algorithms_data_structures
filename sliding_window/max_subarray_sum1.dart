// Find maximum sum of subarray
void main() {
  print(maxSubarraySum1([100, 200, 300, 400], 2));
  print(maxSubarraySum1([1, 4, 2, 10, 23, 3, 1, 0, 20], 4));
  print(maxSubarraySum1([-3, 4, 0, -2, 6, -1], 2));
  print(maxSubarraySum1([3, -2, 7, -4, 1, -1, 4, -2, 1], 2));
  print(maxSubarraySum1([2, 3], 3));
}

int? maxSubarraySum1(List<int> arr, int len) {
  if (arr.length < len) return null;
  int maxSubarrSum = 0;
  int subarrSum = 0;
  for (int i = 0; i < len; i++) {
    subarrSum += arr[i];
  }
  for (int j = len; j < arr.length; j++) {
    if (subarrSum - arr[j - len] + arr[j] > maxSubarrSum) {
      maxSubarrSum = subarrSum - arr[j - len] + arr[j];
    }
    subarrSum = subarrSum - arr[j - len] + arr[j];
  }
  return maxSubarrSum;
}
