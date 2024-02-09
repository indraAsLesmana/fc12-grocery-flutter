import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_fic12_grocery_app/core/assets/assets.gen.dart';
import 'package:flutter_fic12_grocery_app/core/components/search_input.dart';
import 'package:flutter_fic12_grocery_app/core/components/spaces.dart';
import 'package:flutter_fic12_grocery_app/data/models/product_quantity_model/product_quantity.dart';
import 'package:flutter_fic12_grocery_app/data/models/product_response_model/product.dart';
import 'package:flutter_fic12_grocery_app/presentation/orders/widgets/cart_tile.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late TextEditingController searchController;

  final List<ProductQuantity> cartsProduct = [
    ProductQuantity(
        quantity: 0,
        product: Product(
          id: 1,
          productId: "6609882054788",
          name: 'American cherry Jumbo Size',
          price: "Rs. 1,100.00",
          description: 'Earphone',
          image: [
            "https://gabbarfarms.com/cdn/shop/products/Grapefruit_187108e7-7e23-4eb4-813b-8478d9d0bcde_600x.jpg?v=1634632245",
          ],
        )),
    ProductQuantity(
        quantity: 0,
        product: Product(
          id: 1,
          productId: "6594786459780",
          name: 'American cherry Jumbo Size',
          price: "Rs. 1,100.00",
          description: 'Sepatu nike',
          image: [
            "https://gabbarfarms.com/cdn/shop/products/AmericanCherriesJumbo_600x.jpg?v=1634623367",
          ],
        )),
  ];

  @override
  void initState() {
    searchController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          SearchInput(controller: searchController),
          const SpaceHeight(16.0),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: cartsProduct.length,
            itemBuilder: (context, index) =>
                CartTile(data: cartsProduct[index]),
            separatorBuilder: (context, index) => const SpaceHeight(16.0),
          ),
        ],
      ),
    );
  }
}
