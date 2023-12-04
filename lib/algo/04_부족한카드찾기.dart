void main() {
  print(solution2([1, 3, 2, 5]));
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
