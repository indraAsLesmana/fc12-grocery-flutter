// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'dart:math';

import 'package:flutter/foundation.dart';

class Product {
  int? id;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? url;
  String? name;
  String? price;
  String? productId;
  String? description;
  List<String>? image;
  String? brand;
  String? category;

  Product({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.url,
    this.name,
    this.price,
    this.productId,
    this.description,
    this.image,
    this.brand,
    this.category,
  });

  factory Product.fromMap(Map<String, dynamic> data) => Product(
        id: data['id'] as int?,
        createdAt: data['created_at'] == null
            ? null
            : DateTime.parse(data['created_at'] as String),
        updatedAt: data['updated_at'] == null
            ? null
            : DateTime.parse(data['updated_at'] as String),
        url: data['url'] as String?,
        name: data['name'] as String?,
        price: data['price'] as String?,
        productId: data['product_id'] as String?,
        description: data['description'] as String?,
        image:
            (data['image'] as List<dynamic>?)?.map((e) => e as String).toList(),
        brand: data['brand'] as String?,
        category: data['category'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'created_at': createdAt?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
        'url': url,
        'name': name,
        'price': price,
        'product_id': productId,
        'description': description,
        'image': image,
        'brand': brand,
        'category': category,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Product].
  // factory Product.fromJson(String data) {
  //   return Product.fromMap(json.decode(data) as Map<String, dynamic>);
  // }

  factory Product.fromJson(String data) {
    return Product.fromMap(json.decode(data));
  }

  /// `dart:convert`
  ///
  /// Converts [Product] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  bool operator ==(covariant Product other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.url == url &&
        other.name == name &&
        other.price == price &&
        other.productId == productId &&
        other.description == description &&
        listEquals(other.image, image) &&
        other.brand == brand &&
        other.category == category;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode ^
        url.hashCode ^
        name.hashCode ^
        price.hashCode ^
        productId.hashCode ^
        description.hashCode ^
        image.hashCode ^
        brand.hashCode ^
        category.hashCode;
  }

  Product copyWith({
    int? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? url,
    String? name,
    String? price,
    String? productId,
    String? description,
    List<String>? image,
    String? brand,
    String? category,
  }) {
    return Product(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      url: url ?? this.url,
      name: name ?? this.name,
      price: price ?? this.price,
      productId: productId ?? this.productId,
      description: description ?? this.description,
      image: image ?? this.image,
      brand: brand ?? this.brand,
      category: category ?? this.category,
    );
  }

  @override
  String toString() {
    return 'Product(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, url: $url, name: $name, price: $price, productId: $productId, description: $description, image: $image, brand: $brand, category: $category)';
  }

  double? getPriceAsDouble() {
    // if (price != null) {
    //   String value = price!.replaceAll(RegExp(r'[^\d.]'), '');
    //   if (kDebugMode) {
    //     print("price: $value");
    //   }
    //   return double.tryParse(value);
    // }
    // return null;

    if (price != null) {
      // Extract the numerical value from the price string
      RegExp regExp = RegExp(r'\d+(\.\d+)?');
      RegExpMatch? match = regExp.firstMatch(price!);
      if (match != null) {
        String numericValue = match.group(0)!;
        // Convert the extracted value to a double
        print("price: $numericValue");
        return double.tryParse(numericValue);
      }
    }
    return null;
  }
}
