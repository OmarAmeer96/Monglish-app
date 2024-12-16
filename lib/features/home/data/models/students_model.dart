import 'package:json_annotation/json_annotation.dart';
part 'students_model.g.dart';

@JsonSerializable()
class ProductsModel {
  @JsonKey(name: 'products')
  List<Product>? products;
  int? total;
  int? skip;
  int? limit;

  ProductsModel({
    this.products,
    this.total,
    this.skip,
    this.limit,
  });

  factory ProductsModel.fromJson(Map<String, dynamic> json) =>
      _$ProductsModelFromJson(json);

  ProductsModel copyWith({
    List<Product>? products,
    int? total,
    int? skip,
    int? limit,
  }) {
    return ProductsModel(
      products: products ?? this.products,
      total: total ?? this.total,
      skip: skip ?? this.skip,
      limit: limit ?? this.limit,
    );
  }
}

@JsonSerializable()
class Product {
  int? id;
  String? title;
  String? description;
  double? price;
  double? discountPercentage;
  double? rating;
  int? stock;
  String? brand;
  String? category;
  String? thumbnail;
  List<String>? images;

  Product({
    this.id,
    this.title,
    this.description,
    this.price,
    this.discountPercentage,
    this.rating,
    this.stock,
    this.brand,
    this.category,
    this.thumbnail,
    this.images,
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
