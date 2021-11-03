// Flatten nested arrays

void main() {
  print(flatten([1]));

  print(flatten([
    1,
    2,
    3,
    [4, 5]
  ]));
  print(flatten([
    1,
    [
      2,
      [3, 4],
      [
        [5]
      ]
    ]
  ]));
  print(flatten([
    [1],
    [2],
    [3]
  ]));
  print(flatten([
    [
      [
        [1],
        [
          [
            [2]
          ]
        ],
        [
          [
            [
              [
                [
                  [
                    [3]
                  ]
                ]
              ]
            ]
          ]
        ]
      ]
    ]
  ]));
}

// Will assume that array has aat least one value
List flatten(List arr) {
  if (arr.length == 0) return [];
  if (arr.length == 1) return (arr[0] is int) ? [arr[0]] : [...flatten(arr[0])];
  return [
    if (arr[0] is int) arr[0],
    if (arr[0] is List) ...flatten(arr[0]),
    ...flatten(arr.sublist(1))
  ];
}
