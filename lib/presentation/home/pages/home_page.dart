import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fic12_grocery_app/data/models/product_response_model/product_api.dart';
import 'package:flutter_fic12_grocery_app/presentation/home/bloc/all_product/all_product_bloc.dart';
import 'package:flutter_fic12_grocery_app/presentation/home/bloc/checkout/checkout_bloc.dart';
import 'package:flutter_fic12_grocery_app/presentation/home/widgets/organism/menu_categories.dart';
import 'package:go_router/go_router.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/components/search_input.dart';
import '../../../core/components/spaces.dart';
import '../../../core/router/app_router.dart';
import '../widgets/banner_slider.dart';
import '../widgets/organism/product_list.dart';
import '../widgets/title_content.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      GlobalKey<RefreshIndicatorState>();
  late TextEditingController searchController;
  String selectedCateogry = 'Fruits';

  final List<String> banners1 = [
    Assets.images.fruitBanner1.path,
    Assets.images.fruitBanner2.path,
    Assets.images.fruitBanner3.path,
    Assets.images.fruitBanner4.path,
  ];

  final AllProductBloc featureProductBloc = AllProductBloc(ProductApi());
  final AllProductBloc spesialProductBloc = AllProductBloc(ProductApi());

  @override
  void initState() {
    searchController = TextEditingController();
    featureProductBloc.add(const AllProductEvent.getProducts());
    spesialProductBloc.add(const AllProductEvent.getProductsByCategory());
    super.initState();
  }

  Future<void> _refreshHomepage() async {
    featureProductBloc.add(const AllProductEvent.getProducts());
    spesialProductBloc.add(const AllProductEvent.getProductsByCategory());
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grocery Store'),
        actions: [
          // IconButton(
          //   onPressed: () {},
          //   icon: Assets.icons.notification.svg(height: 24.0),
          // ),
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
      body: RefreshIndicator(
        key: _refreshIndicatorKey,
        onRefresh: _refreshHomepage,
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            SearchInput(
              controller: searchController,
              onTap: () {
                context.goNamed(
                  RouteConstants.searchProduct,
                  pathParameters: PathParameters().toMap(),
                  extra: selectedCateogry,
                );
                // context.pushReplacementNamed(
                //   RouteConstants.root,
                //   pathParameters: PathParameters(
                //     rootTab: RootTab.explore,
                //   ).toMap(),
                // );
              },
            ),
            const SpaceHeight(16.0),
            BannerSlider(items: banners1),
            const SpaceHeight(12.0),
            TitleContent(
              title: 'Categories',
              onSeeAllTap: () {
                context.pushReplacementNamed(
                  RouteConstants.root,
                  pathParameters: PathParameters(
                    rootTab: RootTab.explore,
                  ).toMap(),
                );
              },
            ),
            const SpaceHeight(12.0),
            MenuCategories(
              onMenuClick: (String menu) {
                selectedCateogry = menu;
                featureProductBloc.add(
                  AllProductEvent.getProductsByCategory(menu),
                );
              },
            ),
            const SpaceHeight(28.0),
            BlocBuilder<AllProductBloc, AllProductState>(
              bloc: featureProductBloc,
              builder: (context, state) {
                return state.maybeWhen(
                  loaded: (products) {
                    return ProductList(
                      title: 'Featured Product',
                      onSeeAllTap: () {
                        context.goNamed(
                          RouteConstants.searchProduct,
                          pathParameters: PathParameters().toMap(),
                          extra: selectedCateogry,
                        );
                      },
                      items: products,
                    );
                  },
                  loadedByCategory: (products) {
                    return ProductList(
                      title: 'Featured Product',
                      onSeeAllTap: () {
                        context.goNamed(
                          RouteConstants.searchProduct,
                          pathParameters: PathParameters().toMap(),
                          extra: selectedCateogry,
                        );
                      },
                      items: products,
                    );
                  },
                  orElse: () => const SizedBox.shrink(),
                  loading: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  error: (message) {
                    return Center(
                      child: Text(message),
                    );
                  },
                );
              },
            ),
            const SpaceHeight(28.0),
            BlocBuilder<AllProductBloc, AllProductState>(
              bloc: spesialProductBloc,
              builder: (context, state) {
                return state.maybeWhen(
                  loadedByCategory: (products) {
                    return ProductList(
                      title: 'Special offers',
                      onSeeAllTap: () {
                        context.goNamed(
                          RouteConstants.searchProduct,
                          pathParameters: PathParameters().toMap(),
                          extra: "Leafy",
                        );
                      },
                      items: products,
                    );
                  },
                  orElse: () => const SizedBox.shrink(),
                  loading: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  error: (message) {
                    return Center(
                      child: Text(message),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
