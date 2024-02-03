import 'dart:convert';

import 'order.dart';

class OrderResponseModel {
  String? message;
  Order? order;

  OrderResponseModel({this.message, this.order});

  factory OrderResponseModel.fromMap(Map<String, dynamic> data) {
    return OrderResponseModel(
      message: data['message'] as String?,
      order: data['order'] == null
          ? null
          : Order.fromMap(data['order'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toMap() => {
        'message': message,
        'order': order?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [OrderResponseModel].
  factory OrderResponseModel.fromJson(String data) {
    return OrderResponseModel.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [OrderResponseModel] to a JSON string.
  String toJson() => json.encode(toMap());
}
