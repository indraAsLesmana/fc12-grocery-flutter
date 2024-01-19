import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/components/search_input.dart';
import '../../../core/components/spaces.dart';
import '../../../core/router/app_router.dart';
import '../models/product_model.dart';
import '../models/store_model.dart';
import '../widgets/banner_slider.dart';
// import '../widgets/organism/menu_categories.dart';
import '../widgets/organism/product_list.dart';
import '../widgets/title_content.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late TextEditingController searchController;
  final List<ProductModel> featuredProducts = [
    ProductModel(
      images: [
        Assets.images.products.lampu.path,
        Assets.images.products.lampu.path,
        Assets.images.products.lampu.path,
      ],
      name: 'Lampu',
      price: 90000,
      stock: 20,
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ',
      store: StoreModel(
        name: 'CWB Online Store',
        type: StoreEnum.officialStore,
        imageUrl: 'https://avatars.githubusercontent.com/u/534678?v=4',
      ),
    ),
    ProductModel(
      images: [
        Assets.images.products.earphone.path,
        Assets.images.products.earphone.path,
        Assets.images.products.earphone.path,
      ],
      name: 'Earphone',
      price: 320000,
      stock: 20,
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ',
      store: StoreModel(
        name: 'CWB Online Store',
        type: StoreEnum.officialStore,
        imageUrl: 'https://avatars.githubusercontent.com/u/534678?v=4',
      ),
    ),
  ];
  final List<ProductModel> bestSellers = [
    ProductModel(
      images: [
        Assets.images.products.keyboard.path,
        Assets.images.products.keyboard.path,
        Assets.images.products.keyboard.path,
      ],
      name: 'Keyboard Mechanical',
      price: 320000,
      stock: 20,
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ',
      store: StoreModel(
        name: 'CWB Online Store',
        type: StoreEnum.officialStore,
        imageUrl: 'https://avatars.githubusercontent.com/u/534678?v=4',
      ),
    ),
    ProductModel(
      images: [
        Assets.images.products.earphone.path,
        Assets.images.products.earphone.path,
        Assets.images.products.earphone.path,
      ],
      name: 'Earphone',
      price: 320000,
      stock: 20,
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ',
      store: StoreModel(
        name: 'CWB Online Store',
        type: StoreEnum.officialStore,
        imageUrl: 'https://avatars.githubusercontent.com/u/534678?v=4',
      ),
    ),
  ];
  final List<ProductModel> newArrivals = [
    ProductModel(
      images: [
        Assets.images.products.sepatu.path,
        Assets.images.products.sepatu2.path,
        Assets.images.products.sepatu.path,
      ],
      name: 'Sepatu Nike',
      price: 2200000,
      stock: 20,
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ',
      store: StoreModel(
        name: 'CWB Online Store',
        type: StoreEnum.officialStore,
        imageUrl: 'https://avatars.githubusercontent.com/u/534678?v=4',
      ),
    ),
    ProductModel(
      images: [
        Assets.images.products.sepatu2.path,
        Assets.images.products.sepatu.path,
        Assets.images.products.sepatu2.path,
      ],
      name: 'Sepatu Nike',
      price: 2200000,
      stock: 20,
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ',
      store: StoreModel(
        name: 'CWB Online Store',
        type: StoreEnum.officialStore,
        imageUrl: 'https://avatars.githubusercontent.com/u/534678?v=4',
      ),
    ),
  ];
  final List<ProductModel> topRatedProducts = [
    ProductModel(
      images: [
        Assets.images.products.mac.path,
        Assets.images.products.mac2.path,
        Assets.images.products.mac.path,
      ],
      name: 'Macbook',
      price: 12220000,
      stock: 20,
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ',
      store: StoreModel(
        name: 'CWB Online Store',
        type: StoreEnum.officialStore,
        imageUrl: 'https://avatars.githubusercontent.com/u/534678?v=4',
      ),
    ),
    ProductModel(
      images: [
        Assets.images.products.mac2.path,
        Assets.images.products.mac.path,
        Assets.images.products.mac2.path,
      ],
      name: 'Macbook',
      price: 12220000,
      stock: 20,
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ',
      store: StoreModel(
        name: 'CWB Online Store',
        type: StoreEnum.officialStore,
        imageUrl: 'https://avatars.githubusercontent.com/u/534678?v=4',
      ),
    ),
  ];
  final List<ProductModel> specialOffers = [
    ProductModel(
      images: [
        Assets.images.products.mac.path,
        Assets.images.products.mac2.path,
        Assets.images.products.mac.path,
      ],
      name: 'Macbook',
      price: 12220000,
      stock: 20,
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ',
      store: StoreModel(
        name: 'CWB Online Store',
        type: StoreEnum.officialStore,
        imageUrl: 'https://avatars.githubusercontent.com/u/534678?v=4',
      ),
    ),
    ProductModel(
      images: [
        Assets.images.products.mac2.path,
        Assets.images.products.mac.path,
        Assets.images.products.mac2.path,
      ],
      name: 'Macbook',
      price: 12220000,
      stock: 20,
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ',
      store: StoreModel(
        name: 'CWB Online Store',
        type: StoreEnum.officialStore,
        imageUrl: 'https://avatars.githubusercontent.com/u/534678?v=4',
      ),
    ),
  ];
  final List<String> banners1 = [
    Assets.images.banner1.path,
    Assets.images.banner1.path,
  ];
  final List<String> banners2 = [
    Assets.images.banner2.path,
    Assets.images.banner2.path,
    Assets.images.banner2.path,
  ];

  @override
  void initState() {
    searchController = TextEditingController();
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
        title: const Text('Cwb Store'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Assets.icons.notification.svg(height: 24.0),
          ),
          IconButton(
            onPressed: () {
              context.goNamed(
                RouteConstants.cart,
                pathParameters: PathParameters().toMap(),
              );
            },
            icon: Assets.icons.cart.svg(height: 24.0),
          ),
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
          // const MenuCategories(),
          const SpaceHeight(50.0),
          ProductList(
            title: 'Featured Product',
            onSeeAllTap: () {},
            items: featuredProducts,
          ),
          const SpaceHeight(50.0),
          BannerSlider(items: banners2),
          const SpaceHeight(28.0),
          ProductList(
            title: 'Best Sellers',
            onSeeAllTap: () {},
            items: bestSellers,
          ),
          const SpaceHeight(50.0),
          ProductList(
            title: 'New Arrivals',
            onSeeAllTap: () {},
            items: newArrivals,
          ),
          const SpaceHeight(50.0),
          ProductList(
            title: 'Top Rated Product',
            onSeeAllTap: () {},
            items: topRatedProducts,
          ),
          const SpaceHeight(50.0),
          ProductList(
            title: 'Special Offers',
            onSeeAllTap: () {},
            items: specialOffers,
          ),
        ],
      ),
    );
  }
}
