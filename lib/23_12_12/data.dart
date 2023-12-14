class data {
  dynamic collectionChartDataList;

  data({this.collectionChartDataList});

  data.fromJson(Map<String, dynamic> json) {
    if (json['collectionChartDataList'] != null) {
      collectionChartDataList = <CollectionChartDataList>[];
      json['collectionChartDataList'].forEach((v) {
        collectionChartDataList!.add(new CollectionChartDataList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.collectionChartDataList != null) {
      data['collectionChartDataList'] =
          this.collectionChartDataList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CollectionChartDataList {
  String? collectionName;
  dynamic collectionSalePrice;

  CollectionChartDataList({this.collectionName, this.collectionSalePrice});

  CollectionChartDataList.fromJson(Map<String, dynamic> json) {
    collectionName = json['collectionName'];
    if (json['collectionSalePrice'] != null) {
      collectionSalePrice = <CollectionSalePrice>[];
      json['collectionSalePrice'].forEach((v) {
        collectionSalePrice!.add(new CollectionSalePrice.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['collectionName'] = this.collectionName;
    if (this.collectionSalePrice != null) {
      data['collectionSalePrice'] =
          this.collectionSalePrice!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CollectionSalePrice {
  double? price;
  String? cvtDatetime;

  CollectionSalePrice({this.price, this.cvtDatetime});

  CollectionSalePrice.fromJson(Map<String, dynamic> json) {
    price = json['price'];
    cvtDatetime = json['cvtDatetime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['price'] = this.price;
    data['cvtDatetime'] = this.cvtDatetime;
    return data;
  }
}
