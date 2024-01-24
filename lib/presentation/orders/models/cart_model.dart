import 'package:flutter_fic12_grocery_app/presentation/home/models/product_model.dart';

class CartModel {
  final ProductModel product;
  int quantity;

  CartModel({
    required this.product,
    required this.quantity,
  });
}
