void main() {
  print(solution4([1, 3, 2, 5]));
}

int solution(List<int> cards) {
  final allCards = [1, 2, 3, 4, 5];

  for (var card in cards) {
    allCards.remove(card);
  }

  int result = allCards.first;

  return result;
}

//
int solution2(List<int> cards) {
  int result = 0;

  for (var card in cards) {
    if (![1, 2, 3, 4, 5].contains(card)) {
      result = card;
      break;
    }
  }

  return result;
}

int solution3(List<int> cards) {
  int sum = 0;
  for (var value in cards) {
    sum += value;
  }

  return (1 + 2 + 3 + 4 + 5) - sum;
}

int solution4(List<int> cards) {
  // (1, 2), 3, 4
  // (3, 3), 4
  // (6, 4)
  // 10
  return 15 - cards.reduce((value, element) => value + element);
}
