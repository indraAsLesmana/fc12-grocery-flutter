import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fic12_grocery_app/data/models/product_response_model/product_api.dart';
import 'package:flutter_fic12_grocery_app/presentation/home/bloc/all_product/all_product_bloc.dart';
import 'package:flutter_fic12_grocery_app/presentation/home/bloc/checkout/checkout_bloc.dart';
import 'package:flutter_fic12_grocery_app/presentation/home/widgets/organism/menu_categories.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';
import 'package:badges/badges.dart' as badges;

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
  late TextEditingController searchController;

  final List<String> banners1 = [
    Assets.images.fruitBanner1.path,
    Assets.images.fruitBanner2.path,
    Assets.images.fruitBanner3.path,
    Assets.images.fruitBanner4.path,
  ];
  final List<String> banners2 = [
    Assets.images.banner2.path,
    Assets.images.banner2.path,
    Assets.images.banner2.path,
  ];

  final AllProductBloc featureProductBloc = AllProductBloc(ProductApi());
  final AllProductBloc spesialProductBloc = AllProductBloc(ProductApi());

  @override
  void initState() {
    searchController = TextEditingController();
    featureProductBloc.add(const AllProductEvent.getProducts());
    spesialProductBloc.add(const AllProductEvent.getProductsBestSeller());
    super.initState();
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
                  loaded: (cart) {
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
        padding: const EdgeInsets.all(16.0),
        children: [
          SearchInput(
            controller: searchController,
            onTap: () {
              context.pushReplacementNamed(
                RouteConstants.root,
                pathParameters: PathParameters(
                  rootTab: RootTab.explore,
                ).toMap(),
              );
            },
          ),
          const SpaceHeight(16.0),
          BannerSlider(items: banners1),
          const SpaceHeight(12.0),
          TitleContent(
            title: 'Categories',
            onSeeAllTap: () {},
          ),
          const SpaceHeight(12.0),
          // SizedBox(
          //   child: Shimmer.fromColors(
          //     baseColor: Colors.grey.shade300,
          //     highlightColor: Colors.grey.shade100,
          //     child: const MenuCategories(),
          //   ),
          // ),
          const MenuCategories(),
          const SpaceHeight(28.0),
          BlocBuilder<AllProductBloc, AllProductState>(
            bloc: featureProductBloc,
            builder: (context, state) {
              return state.maybeWhen(
                loaded: (products) {
                  return ProductList(
                    title: 'Featured Product',
                    onSeeAllTap: () {},
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
                loadedBestSeller: (products) {
                  return ProductList(
                    title: 'Special offers',
                    onSeeAllTap: () {},
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
    );
  }
}
