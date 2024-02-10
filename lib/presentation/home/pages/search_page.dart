// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fic12_grocery_app/core/assets/assets.gen.dart';

import 'package:flutter_fic12_grocery_app/core/components/search_input.dart';
import 'package:flutter_fic12_grocery_app/core/components/spaces.dart';
import 'package:flutter_fic12_grocery_app/core/router/app_router.dart';
import 'package:flutter_fic12_grocery_app/data/models/product_quantity_model/product_quantity.dart';
import 'package:flutter_fic12_grocery_app/data/models/product_response_model/product.dart';
import 'package:flutter_fic12_grocery_app/data/models/product_response_model/product_api.dart';
import 'package:flutter_fic12_grocery_app/presentation/home/bloc/checkout/checkout_bloc.dart';
import 'package:flutter_fic12_grocery_app/presentation/home/bloc/search_product/search_product_bloc.dart';
import 'package:flutter_fic12_grocery_app/presentation/orders/widgets/cart_tile.dart';
import 'package:go_router/go_router.dart';

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
  final _textController = TextEditingController();
  late final FocusNode _focusNode = FocusNode();
  final SearchProductBloc _blocSearchProduct = SearchProductBloc(ProductApi());

  @override
  void initState() {
    // if (widget.requestSearchFocus == true) {
    //   _focusNode.requestFocus();
    // }
    _focusNode.requestFocus();
    super.initState();
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
        actions: [
          BlocBuilder<CheckoutBloc, CheckoutState>(
            builder: (context, state) {
              return state.maybeWhen(
                  orElse: () => const SizedBox(),
                  loaded: (cart, _, __, ___, ____, _____) {
                    final totalQuantity = cart.fold<int>(
                      0,
                      (previousValue, element) =>
                          previousValue + (element.quantity ?? 0),
                    );
                    if (totalQuantity == 0) {
                      return IconButton(
                        onPressed: () {
                          context.goNamed(
                            RouteConstants.cart,
                            pathParameters: PathParameters().toMap(),
                          );
                        },
                        icon: Assets.icons.cart.svg(height: 24.0),
                      );
                    } else {
                      return badges.Badge(
                        badgeContent: Text(
                          totalQuantity.toString(),
                          style: const TextStyle(color: Colors.white),
                        ),
                        child: IconButton(
                          onPressed: () {
                            context.goNamed(
                              RouteConstants.cart,
                              pathParameters: PathParameters().toMap(),
                            );
                          },
                          icon: Assets.icons.cart.svg(height: 24.0),
                        ),
                      );
                    }
                  });
            },
          ),
          const SizedBox(width: 16.0),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          SearchInput(
            controller: _textController,
            focusNode: _focusNode,
            onChanged: (value) {
              _blocSearchProduct.add(SearchProductEvent.onTextChanged(value));
            },
          ),
          const SpaceHeight(16.0),
          BlocBuilder<SearchProductBloc, SearchProductState>(
            bloc: _blocSearchProduct,
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => const Text("No result"),
                onEmpty: () => const Text("Please type"),
                onNotFound: () => const Text("Product Not found"),
                onError: (message) => Text(message),
                onLoaded: (products) {
                  return ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: products.length,
                    itemBuilder: (context, index) => CartTile(
                      isEditable: false,
                      isSearchCard: true,
                      data: ProductQuantity(
                        quantity: 0,
                        product: products[index],
                      ),
                    ),
                    separatorBuilder: (context, index) =>
                        const SpaceHeight(16.0),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
