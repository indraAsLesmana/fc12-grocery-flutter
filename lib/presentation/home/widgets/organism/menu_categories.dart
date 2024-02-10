import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fic12_grocery_app/chuck_interceptor.dart';
import 'package:flutter_fic12_grocery_app/presentation/home/bloc/category/category_product_bloc.dart';
import 'package:shimmer/shimmer.dart';

import '../category_button.dart';

class MenuCategories extends StatefulWidget {
  const MenuCategories({super.key});

  @override
  State<MenuCategories> createState() => _MenuCategoriesState();
}

class _MenuCategoriesState extends State<MenuCategories> {
  @override
  void initState() {
    //TODO: this need to integrate with homepage_refresh event
    context
        .read<CategoryBloc>()
        .add(const CategoryProductEvent.getCategoryProduct());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBloc, CategoryProductState>(
      builder: (context, state) {
        return state.maybeWhen(
          loaded: (categories) => Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ...categories.map(
                (category) => Flexible(
                  child: CategoryButton(
                    imagePath: category.image!,
                    label: category.name!,
                    onPressed: () {
                      ChuckInterceptor().intercept.showInspector();
                    },
                  ),
                ),
              ),
            ],
          ),
          orElse: () => const SizedBox.shrink(),
        );
        //   return Row(
        //   children: [
        //     Flexible(
        //       child: CategoryButton(
        //         imagePath: Assets.images.categories.menuBestseller.path,
        //         label: 'Bestseller',
        //         onPressed: () {},
        //       ),
        //     ),
        //     Flexible(
        //       child: CategoryButton(
        //         imagePath: Assets.images.categories.menuFlashsale.path,
        //         label: 'Flashsale',
        //         onPressed: () {},
        //       ),
        //     ),
        //     Flexible(
        //       child: CategoryButton(
        //         imagePath: Assets.images.categories.menuToprated.path,
        //         label: 'Toprated',
        //         onPressed: () {},
        //       ),
        //     ),
        //     Flexible(
        //       child: CategoryButton(
        //         imagePath: Assets.images.categories.menuMore.path,
        //         label: 'More',
        //         onPressed: () {},
        //       ),
        //     ),
        //   ],
        // );
      },
    );
  }
}
