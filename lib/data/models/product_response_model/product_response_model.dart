import 'dart:convert';

import 'data.dart';

class ProductResponseModel {
  String? message;
  Data? data;

  ProductResponseModel({this.message, this.data});

  factory ProductResponseModel.fromMap(Map<String, dynamic> data) {
    return ProductResponseModel(
      message: data['message'] as String?,
      data: data['data'] == null
          ? null
          : Data.fromMap(data['data'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toMap() => {
        'message': message,
        'data': data?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [ProductResponseModel].
  factory ProductResponseModel.fromJson(String data) {
    return ProductResponseModel.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [ProductResponseModel] to a JSON string.
  String toJson() => json.encode(toMap());
}
