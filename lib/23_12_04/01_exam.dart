class Wand {
  late String _name; // 이름
  late double _power; // 마력

  Wand({
    required String name,
    required double power,
  }) {
    // 이름은 null이거나 2글자 미만일 수 없다.
    if (name.length >= 3) {
      _name = name;
    } else {
      throw Exception('$name의 이름은 null이거나 2글자 미만일 수 없다.');
    }

    // 0.5, 100.0, 0.4, 0.3, 99.0, 101.0
    // 마력은 0.5이상 100.0 이하이다.
    // 0.5 <= 마력 <= 100.0
    if (0.5 <= power && power <= 100.0) {
      _power = power;
    } else {
      throw Exception('$name의 마력은 0.5이상 100.0 이하이다.');
    }
  }

  String get name => _name;

  /// 이름은 null이거나 2글자 미만일 수 없다.
  set name(String value) {
    if (value.length >= 3) {
      _name = value;
    } else {
      throw Exception('$name의 이름은 null이거나 2글자 미만일 수 없다.');
    }
  }

  double get power => _power;

  /// 마력은 0.5이상 100.0 이하이다.
  set power(double value) {
    if (value >= 0.5 && value <= 100.0) {
      _power = value;
    } else {
      throw Exception('$name의 마력은 0.5이상 100.0이하이다.');
    }
  }

  @override
  String toString() {
    return '지팡이 {name: $_name, power: $_power}';
  }
}
