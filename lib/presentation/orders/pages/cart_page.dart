import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_onlineshop_app/data/datasources/auth_local_datasource.dart';
import 'package:go_router/go_router.dart';

import '../../../core/components/buttons.dart';
import '../../../core/components/spaces.dart';
import '../../../core/core.dart';
import '../../../core/router/app_router.dart';
import '../../home/bloc/checkout/checkout_bloc.dart';
import '../widgets/cart_tile.dart';

import 'package:badges/badges.dart' as badges;

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        actions: [
          BlocBuilder<CheckoutBloc, CheckoutState>(
            builder: (context, state) {
              return state.maybeWhen(
                loaded: (checkout) {
                  final totalQuantity = checkout.fold<int>(
                    0,
                    (previousValue, element) =>
                        previousValue + (element.quantity ?? 0),
                  );
                  return totalQuantity > 0
                      ? badges.Badge(
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
                        )
                      : IconButton(
                          onPressed: () {
                            context.goNamed(
                              RouteConstants.cart,
                              pathParameters: PathParameters().toMap(),
                            );
                          },
                          icon: Assets.icons.cart.svg(height: 24.0),
                        );
                },
                orElse: () => const SizedBox.shrink(),
              );
            },
          ),
          const SizedBox(width: 16.0),
          // IconButton(
          //   onPressed: () {
          //     context.goNamed(
          //       RouteConstants.cart,
          //       pathParameters: PathParameters(
          //         rootTab: RootTab.order,
          //       ).toMap(),
          //     );
          //   },
          //   icon: Assets.icons.cart.svg(height: 24.0),
          // ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          BlocBuilder<CheckoutBloc, CheckoutState>(
            builder: (context, state) {
              return state.maybeWhen(
                  orElse: () => const SizedBox.shrink(),
                  loaded: (checkout) {
                    return ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: checkout.length,
                      itemBuilder: (context, index) => CartTile(
                        data: checkout[index],
                      ),
                      separatorBuilder: (context, index) =>
                          const SpaceHeight(16.0),
                    );
                  });
            },
          ),
          const SpaceHeight(50.0),
          Row(
            children: [
              const Text(
                'Total',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              BlocBuilder<CheckoutBloc, CheckoutState>(
                builder: (context, state) {
                  final total = state.maybeWhen(
                    orElse: () => 0,
                    loaded: (checkout) {
                      return checkout.fold<int>(
                        0,
                        (previousValue, element) => (previousValue +
                                ((element.quantity ?? 0) *
                                    (element.product?.getPriceAsDouble() ?? 0)))
                            .toInt(),
                      );
                    },
                  );
                  return Text(
                    total.currencyFormatRp,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  );
                },
              ),
            ],
          ),
          const SpaceHeight(40.0),
          BlocBuilder<CheckoutBloc, CheckoutState>(
            builder: (context, state) {
              final totalQty = state.maybeWhen(
                orElse: () => 0,
                loaded: (checkout) {
                  return checkout.fold<int>(
                    0,
                    (previousValue, element) =>
                        previousValue + (element.quantity ?? 0),
                  );
                },
              );
              return Button.filled(
                onPressed: () async {
                  // final isAuth = await AuthLocalDatasource().isAuth();
                  // if (!isAuth) {
                  //   context.pushNamed(
                  //     RouteConstants.login,
                  //   );
                  // } else {
                  //   context.goNamed(
                  //     RouteConstants.orderDetail,
                  //     pathParameters: PathParameters(
                  //       rootTab: RootTab.order,
                  //     ).toMap(),
                  //   );
                  // }
                },
                label: 'Checkout ($totalQty)',
              );
              // return Button.filled(
              //   onPressed: () {
              //     context.goNamed(
              //       RouteConstants.address,
              //       pathParameters: PathParameters(
              //         rootTab: RootTab.order,
              //       ).toMap(),
              //     );
              //   },
              //   label: 'Checkout (10)',
              // );
            },
          ),
        ],
      ),
    );
  }
}
