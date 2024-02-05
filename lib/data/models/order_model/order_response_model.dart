import 'dart:convert';

class OrderResponseModel {
  final String? message;
  final Order? order;

  OrderResponseModel({
    this.message,
    this.order,
  });

  factory OrderResponseModel.fromJson(String str) =>
      OrderResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory OrderResponseModel.fromMap(Map<String, dynamic> json) =>
      OrderResponseModel(
        message: json["message"],
        order: json["order"] == null ? null : Order.fromMap(json["order"]),
      );

  Map<String, dynamic> toMap() => {
        "message": message,
        "order": order?.toMap(),
      };
}

class Order {
  final int? userId;
  final int? addressId;
  final int? subtotal;
  final int? shippingCost;
  final int? totalCost;
  final String? status;
  final String? paymentMethod;
  final String? shippingService;
  final String? transactionNumber;
  // final DateTime? updatedAt;
  // final DateTime? createdAt;
  final int? id;
  final String? paymentVaName;
  final String? paymentVaNumber;

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
    // this.updatedAt,
    // this.createdAt,
    this.id,
    this.paymentVaName,
    this.paymentVaNumber,
  });

  factory Order.fromJson(String str) => Order.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Order.fromMap(Map<String, dynamic> json) => Order(
        userId: json["user_id"],
        addressId: json["address_id"],
        subtotal: json["subtotal"],
        shippingCost: json["shipping_cost"],
        totalCost: json["total_cost"],
        status: json["status"],
        paymentMethod: json["payment_method"],
        shippingService: json["shipping_service"],
        transactionNumber: json["transaction_number"],
        // updatedAt: json["updated_at"] == null
        //     ? null
        //     : DateTime.parse(json["updated_at"]),
        // createdAt: json["created_at"] == null
        //     ? null
        //     : DateTime.parse(json["created_at"]),
        id: json["id"],
        paymentVaName: json["payment_va_name"],
        paymentVaNumber: json["payment_va_number"],
      );

  Map<String, dynamic> toMap() => {
        "user_id": userId,
        "address_id": addressId,
        "subtotal": subtotal,
        "shipping_cost": shippingCost,
        "total_cost": totalCost,
        "status": status,
        "payment_method": paymentMethod,
        "shipping_service": shippingService,
        "transaction_number": transactionNumber,
        // "updated_at": updatedAt?.toIso8601String(),
        // "created_at": createdAt?.toIso8601String(),
        "id": id,
        "payment_va_name": paymentVaName,
        "payment_va_number": paymentVaNumber,
      };
}
