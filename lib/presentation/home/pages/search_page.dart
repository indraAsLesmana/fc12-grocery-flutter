// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_fic12_grocery_app/core/components/search_input.dart';
import 'package:flutter_fic12_grocery_app/core/components/spaces.dart';
import 'package:flutter_fic12_grocery_app/data/models/product_quantity_model/product_quantity.dart';
import 'package:flutter_fic12_grocery_app/data/models/product_response_model/product.dart';
import 'package:flutter_fic12_grocery_app/presentation/orders/widgets/cart_tile.dart';

class SearchPage extends StatefulWidget {
  final bool? requestSearchFocus;
  const SearchPage({
    Key? key,
    this.requestSearchFocus,
  }) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late TextEditingController searchController;
  late final FocusNode _focusNode = FocusNode();

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
    // if (widget.requestSearchFocus == true) {
    //   _focusNode.requestFocus();
    // }
    _focusNode.requestFocus();
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
          SearchInput(controller: searchController, focusNode: _focusNode),
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
