import 'dart:convert';

import 'category_product.dart';

class CategoryResponseModel {
  String? message;
  List<CategoryProduct>? data;

  CategoryResponseModel({this.message, this.data});

  @override
  String toString() {
    return 'CategoryResponseModel(message: $message, data: $data)';
  }

  factory CategoryResponseModel.fromMap(Map<String, dynamic> data) {
    return CategoryResponseModel(
      message: data['message'] as String?,
      data: (data['data'] as List<dynamic>?)
          ?.map((e) => CategoryProduct.fromMap(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toMap() => {
        'message': message,
        'data': data?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [CategoryResponseModel].
  factory CategoryResponseModel.fromJson(String data) {
    return CategoryResponseModel.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [CategoryResponseModel] to a JSON string.
  String toJson() => json.encode(toMap());
}
