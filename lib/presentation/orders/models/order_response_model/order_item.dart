import 'dart:convert';

import 'product.dart';

class OrderItem {
  int? id;
  int? orderId;
  String? productId;
  int? quantity;
  DateTime? createdAt;
  DateTime? updatedAt;
  Product? product;

  OrderItem({
    this.id,
    this.orderId,
    this.productId,
    this.quantity,
    this.createdAt,
    this.updatedAt,
    this.product,
  });

  factory OrderItem.fromMap(Map<String, dynamic> data) => OrderItem(
        id: data['id'] as int?,
        orderId: data['order_id'] as int?,
        productId: data['product_id'] as String?,
        quantity: data['quantity'] as int?,
        createdAt: data['created_at'] == null
            ? null
            : DateTime.parse(data['created_at'] as String),
        updatedAt: data['updated_at'] == null
            ? null
            : DateTime.parse(data['updated_at'] as String),
        product: data['product'] == null
            ? null
            : Product.fromMap(data['product'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'order_id': orderId,
        'product_id': productId,
        'quantity': quantity,
        'created_at': createdAt?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
        'product': product?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [OrderItem].
  factory OrderItem.fromJson(String data) {
    return OrderItem.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [OrderItem] to a JSON string.
  String toJson() => json.encode(toMap());
}
