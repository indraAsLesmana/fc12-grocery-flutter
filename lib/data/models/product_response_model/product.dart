import 'dart:convert';

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
        image: data['image'] as List<String>?,
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
  factory Product.fromJson(String data) {
    return Product.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Product] to a JSON string.
  String toJson() => json.encode(toMap());
}
