class Plans {
  int? _typeId;
  int? _totalSize;
  int? _offset;
  late List<ProductModel> _products;
  List<ProductModel> get products=>_products;


  Plans({required typeId, required totalSize, required offset, required products}){
    this._offset=offset;
    this._totalSize=totalSize;
    this._typeId=typeId;
    this._products=products;
  }

  Plans.fromJson(Map<String, dynamic> json) {
    _typeId = json['type_id'];
    _totalSize = json['total_size'];
    _offset = json['offset'];
    print("ghjnm");
    print(_totalSize);
    if (json['products'] != null) {
      _products = <ProductModel>[];
      json['products'].forEach((v) {
        _products!.add(ProductModel.fromJson(v));
      });
    }
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['type_id'] = this.typeId;
  //   data['total_size'] = this.totalSize;
  //   data['offset'] = this.offset;
  //   if (this.products != null) {
  //     data['products'] = this.products!.map((v) => v.toJson()).toList();
  //   }
  //   return data;
  // }
}

class ProductModel {
  int? pid;
  String? subProductName;
  String? subProductDescription;
  int? subProductPrice;
  String? subProductImage;
  String? subFoodType;
  String? subProductCategoryImage;

  ProductModel(
      {this.pid,
        this.subProductName,
        this.subProductDescription,
        this.subProductPrice,
        this.subProductImage,
        this.subFoodType,
        this.subProductCategoryImage});

  ProductModel.fromJson(Map<String, dynamic> json) {
    pid = json['pid'];
    subProductName = json['subProductName'];
    subProductDescription = json['subProductDescription'];
    subProductPrice = json['subProductPrice'];
    subProductImage = json['subProductImage'];
    subFoodType = json['subFoodType'];
    subProductCategoryImage = json['subProductCategoryImage'];
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['pid'] = this.pid;
  //   data['subProductName'] = this.subProductName;
  //   data['subProductDescription'] = this.subProductDescription;
  //   data['subProductPrice'] = this.subProductPrice;
  //   data['subProductImage'] = this.subProductImage;
  //   data['subFoodType'] = this.subFoodType;
  //   data['subProductCategoryImage'] = this.subProductCategoryImage;
  //   return data;
  // }
}