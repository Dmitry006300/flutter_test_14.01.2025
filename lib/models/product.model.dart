import 'package:flutter_test_project_14012025/models/base.model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product.model.g.dart';

@JsonSerializable()
class ProductModel extends BaseModel {
  final String name;
  final double price;
  ProductModel({
    required super.id,
    super.deleted,
    required super.createdAt,
    required super.updatedAt,

    required this.name,
    required this.price,
   

  });

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}

