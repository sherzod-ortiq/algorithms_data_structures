## Sorting algorithms

### Bubble sort
A sorting algorithm where the largest values bubble up to the top.
Bubble sort is probably good candidate when you are sorting nearly sorted array.
Time complexity Big O: best case is O(n) and the worst or average case is O(n^2).
Space complexity: O(1).

### Selection sort
Similar to bubble sort, but instead of first placing large values into sorted position, it places small values into sorted position. This algorithm selects the first element from the unsorted part of the array as minimum value, then it finds the smallest element (from the unsorted part of the array). The smallest element replaced with the first minimum element. Compared to bubble sort, selection sort does less swaps.
Time complexity Big O: best case is O(n^2) and the worst or average case is O(n^2). Space complexity: O(1).

### Insertion sort
This algorithm just picks second element of array and compares it with the portion of array which is behind and inserts it in the right place there. Then it moves to the next element, the iteration continues unless the whole array is sorted. Insertion search is good when we use it for sorting **live (continuous) data**, because one side of the array is kept sorted putting new data in the right place does not need much computing.
Time complexity Big O: best case is O(n) and the worst or average case is O(n^2).
Space complexity: O(1).