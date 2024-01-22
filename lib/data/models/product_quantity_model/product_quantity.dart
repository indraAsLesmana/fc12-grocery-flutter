// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_fic12_grocery_app/data/models/product_response_model/product.dart';

class ProductQuantity {
  int? quantity;
  Product? product;

  ProductQuantity({
    this.quantity,
    this.product,
  });

  @override
  bool operator ==(covariant ProductQuantity other) {
    if (identical(this, other)) return true;

    return other.quantity == quantity && other.product == product;
  }

  @override
  int get hashCode => quantity.hashCode ^ product.hashCode;

  @override
  String toString() =>
      'ProductQuantity(quantity: $quantity, product: $product)';

  ProductQuantity copyWith({
    int? quantity,
    Product? product,
  }) {
    return ProductQuantity(
      quantity: quantity ?? this.quantity,
      product: product ?? this.product,
    );
  }
}
