void main() {
  // dynamic i = 10;
  //
  // i.forEach((num) => print(num));
  // print(i.length);
  // i[0] = 10;
  // i.asdfasdfas();
  // i.adsfa().asdfas();

  Object o = 10;

  Pocket<int> pocket = Pocket();

  pocket.put(10);

  var data = pocket.get();

  print(data.runtimeType);

  if (data != null) {
    print(data + 10);
  }

  AuthState authState = AuthState.auth;
}

enum AuthState {
  auth,
  bbb,
  ccc,
  ddd,
}

class Pocket<E> {
  E? _data;

  void put(E data) => _data = data;

  E? get() => _data;
}
