import 'dart:convert';

import 'order_item.dart';
import 'user.dart';

class Order {
  int? userId;
  String? addressId;
  int? subtotal;
  String? shippingCost;
  int? totalCost;
  String? status;
  String? paymentMethod;
  String? shippingService;
  String? transactionNumber;
  DateTime? updatedAt;
  DateTime? createdAt;
  int? id;
  String? paymentVaName;
  String? paymentVaNumber;
  User? user;
  List<OrderItem>? orderItems;

  Order({
    this.userId,
    this.addressId,
    this.subtotal,
    this.shippingCost,
    this.totalCost,
    this.status,
    this.paymentMethod,
    this.shippingService,
    this.transactionNumber,
    this.updatedAt,
    this.createdAt,
    this.id,
    this.paymentVaName,
    this.paymentVaNumber,
    this.user,
    this.orderItems,
  });

  factory Order.fromMap(Map<String, dynamic> data) => Order(
        userId: data['user_id'] as int?,
        addressId: data['address_id'] as String?,
        subtotal: data['subtotal'] as int?,
        shippingCost: data['shipping_cost'] as String?,
        totalCost: data['total_cost'] as int?,
        status: data['status'] as String?,
        paymentMethod: data['payment_method'] as String?,
        shippingService: data['shipping_service'] as String?,
        transactionNumber: data['transaction_number'] as String?,
        updatedAt: data['updated_at'] == null
            ? null
            : DateTime.parse(data['updated_at'] as String),
        createdAt: data['created_at'] == null
            ? null
            : DateTime.parse(data['created_at'] as String),
        id: data['id'] as int?,
        paymentVaName: data['payment_va_name'] as String?,
        paymentVaNumber: data['payment_va_number'] as String?,
        user: data['user'] == null
            ? null
            : User.fromMap(data['user'] as Map<String, dynamic>),
        orderItems: (data['order_items'] as List<dynamic>?)
            ?.map((e) => OrderItem.fromMap(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toMap() => {
        'user_id': userId,
        'address_id': addressId,
        'subtotal': subtotal,
        'shipping_cost': shippingCost,
        'total_cost': totalCost,
        'status': status,
        'payment_method': paymentMethod,
        'shipping_service': shippingService,
        'transaction_number': transactionNumber,
        'updated_at': updatedAt?.toIso8601String(),
        'created_at': createdAt?.toIso8601String(),
        'id': id,
        'payment_va_name': paymentVaName,
        'payment_va_number': paymentVaNumber,
        'user': user?.toMap(),
        'order_items': orderItems?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Order].
  factory Order.fromJson(String data) {
    return Order.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Order] to a JSON string.
  String toJson() => json.encode(toMap());
}
