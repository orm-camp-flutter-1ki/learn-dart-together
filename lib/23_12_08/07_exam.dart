enum KeyType {
  padlock,
  button,
  dial,
  finger,
}

class StrongBox<E> {
  KeyType _keyType;
  E? _item;
  int _count = 0;

  StrongBox(this._keyType);

  void put(E item) => _item = item;

  E? get() {
    _count++;
    switch (_keyType) {
      case KeyType.padlock:
        if (_count > 1024) {
          return _item;
        }
      case KeyType.button:
        if (_count > 10000) {
          return _item;
        }
      case KeyType.dial:
        if (_count > 30000) {
          return _item;
        }
      case KeyType.finger:
        if (_count > 1000000) {
          return _item;
        }
        break;
    }
    return null;
  }
}

void main() {
  final box = StrongBox<String>(KeyType.padlock);
  box.put('임금님 귀는 당나귀 귀!!!');

  for (int i = 0; i < 1025; i++) {
    print('${i + 1}번째: ${box.get()}');
  }
}
