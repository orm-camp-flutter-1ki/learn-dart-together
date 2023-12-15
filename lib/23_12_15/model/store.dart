import 'package:json_annotation/json_annotation.dart';

part 'store.g.dart';

@JsonSerializable(explicitToJson: true)
class Store {
  String name;
  String address;
  String stock;
  int type;

  Store({
    required this.name,
    required this.address,
    required this.stock,
    required this.type,
  });

  factory Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);

  Map<String, dynamic> toJson() => _$StoreToJson(this);

  @override
  String toString() {
    return 'Store{name: $name, address: $address, stock: $stock}';
  }
}