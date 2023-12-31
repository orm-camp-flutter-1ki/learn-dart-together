import 'package:learn_dart_together/23_12_15/data_source/mask_api.dart';
import 'package:learn_dart_together/23_12_15/mapper/mask_mapper.dart';

import 'model/store.dart';

void main() async {
  final api = MaskApi();

  final dto = await api.getMaskInfoResult();

  List<Store> stores = dto.stores
      ?.where((e) => e.remainStat != null)    // 거를 거 거르고
      .map((e) => e.toStore())    // 모델 클래스로 변환
      .toList() ?? [];

  // ------------------------------------------------------------

  print(stores.toString());
}