import 'dart:convert';

class HistoryOrderResponseModel {
    final List<HistoryOrder>? orders;

    HistoryOrderResponseModel({
        this.orders,
    });

    factory HistoryOrderResponseModel.fromJson(String str) => HistoryOrderResponseModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory HistoryOrderResponseModel.fromMap(Map<String, dynamic> json) => HistoryOrderResponseModel(
        orders: json["orders"] == null ? [] : List<HistoryOrder>.from(json["orders"]!.map((x) => HistoryOrder.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "orders": orders == null ? [] : List<dynamic>.from(orders!.map((x) => x.toMap())),
    };
}

class HistoryOrder {
    final int? id;
    final int? userId;
    final int? addressId;
    final int? subtotal;
    final int? shippingCost;
    final int? totalCost;
    final String? status;
    final String? paymentMethod;
    final String? paymentVaName;
    final String? paymentVaNumber;
    final dynamic paymentEwallet;
    final String? shippingService;
    final String? shippingResi;
    final String? transactionNumber;
    final DateTime? createdAt;
    final DateTime? updatedAt;

    HistoryOrder({
        this.id,
        this.userId,
        this.addressId,
        this.subtotal,
        this.shippingCost,
        this.totalCost,
        this.status,
        this.paymentMethod,
        this.paymentVaName,
        this.paymentVaNumber,
        this.paymentEwallet,
        this.shippingService,
        this.shippingResi,
        this.transactionNumber,
        this.createdAt,
        this.updatedAt,
    });

    factory HistoryOrder.fromJson(String str) => HistoryOrder.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory HistoryOrder.fromMap(Map<String, dynamic> json) => HistoryOrder(
        id: json["id"],
        userId: json["user_id"],
        addressId: json["address_id"],
        subtotal: json["subtotal"],
        shippingCost: json["shipping_cost"],
        totalCost: json["total_cost"],
        status: json["status"],
        paymentMethod: json["payment_method"],
        paymentVaName: json["payment_va_name"],
        paymentVaNumber: json["payment_va_number"],
        paymentEwallet: json["payment_ewallet"],
        shippingService: json["shipping_service"],
        shippingResi: json["shipping_resi"],
        transactionNumber: json["transaction_number"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "user_id": userId,
        "address_id": addressId,
        "subtotal": subtotal,
        "shipping_cost": shippingCost,
        "total_cost": totalCost,
        "status": status,
        "payment_method": paymentMethod,
        "payment_va_name": paymentVaName,
        "payment_va_number": paymentVaNumber,
        "payment_ewallet": paymentEwallet,
        "shipping_service": shippingService,
        "shipping_resi": shippingResi,
        "transaction_number": transactionNumber,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
    };
}
