class Book extends TangibleAsset {
  String isbn;

  Book({
    required super.name,
    required super.price,
    required super.color,
    required this.isbn,
    required super.weight,
  });
}

class Computer extends TangibleAsset {
  String makerName;

  Computer({
    required super.name,
    required super.price,
    required super.color,
    required this.makerName,
    required super.weight,
  });
}

abstract class TangibleAsset extends Asset implements Thing {
  String color;

  // @override
  // double weight;

  double _weight;

  TangibleAsset({
    required super.name,
    required super.price,
    required this.color,
    required double weight,
  }) : _weight = weight;

  @override
  double get weight => _weight;

  @override
  set weight(double value) {
    _weight = value;
  }
}

abstract class Asset {
  String name;
  int price;

  Asset({
    required this.name,
    required this.price,
  });
}

abstract interface class Thing {
  double get weight;

  set weight(double value);
}
