void printElement(int element) {
  print(element);
}

void main() {
  List<int> list = [1, 2, 3, 4, 5];

  // Pass printElement as a parameter.
  // void 함수(int)
  list.forEach(printElement);
  list.forEach(print);

  // 반복자
  final Iterable<int> filteredList = list.where((e) => e.isEven);
  final List<int> items = filteredList.toList();

  print(list.where((e) => e.isEven).toList());

  print(list.where((e) => e.isEven)
    .map((e) => '$e 번째')
    .toList());
}
