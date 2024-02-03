import 'package:flutter/material.dart';
import 'package:flutter_fic12_grocery_app/chuck_interceptor.dart';
import 'package:flutter_fic12_grocery_app/presentation/address/models/address_model.dart';
import 'package:flutter_fic12_grocery_app/presentation/address/pages/add_address_page.dart';
import 'package:flutter_fic12_grocery_app/presentation/address/pages/address_page.dart';
import 'package:flutter_fic12_grocery_app/presentation/address/pages/edit_address_page.dart';
import 'package:flutter_fic12_grocery_app/presentation/auth/pages/login_page.dart';
import 'package:flutter_fic12_grocery_app/presentation/auth/pages/register_page.dart';
import 'package:flutter_fic12_grocery_app/presentation/orders/pages/cart_page.dart';
import 'package:flutter_fic12_grocery_app/presentation/orders/pages/order_detail_page.dart';
import 'package:flutter_fic12_grocery_app/presentation/orders/pages/payment_detail_page.dart';
import 'package:flutter_fic12_grocery_app/presentation/orders/pages/payment_waiting_page.dart';
import 'package:go_router/go_router.dart';

import '../../presentation/home/pages/dashboard_page.dart';
import '../../presentation/intro/splash_page.dart';

// import '../../../ui/address/models/address_model.dart';
// import '../../../ui/address/pages/add_address_page.dart';
// import '../../../ui/address/pages/address_page.dart';
// import '../../../ui/address/pages/edit_address_page.dart';
// import '../../../ui/auth/pages/login_page.dart';
// import '../../../ui/auth/pages/register_page.dart';
// import '../../../ui/auth/pages/verification_page.dart';
// import '../../../ui/home/models/product_model.dart';
// import '../../../ui/home/pages/product_detail_page.dart';
// import '../../../ui/home/pages/root_page.dart';
// import '../../../ui/intro/splash_page.dart';
// import '../../../ui/orders/pages/cart_page.dart';
// import '../../../ui/orders/pages/order_detail_page.dart';
// import '../../../ui/orders/pages/payment_detail_page.dart';
// import '../../../ui/orders/pages/shipping_detail_page.dart';
// import '../../../ui/orders/pages/tracking_order_page.dart';

part 'route_constants.dart';
part 'enums/root_tab.dart';
part 'models/path_parameters.dart';

class AppRouter {
  final GlobalKey<NavigatorState>? _navigatorKey =
      ChuckInterceptor().intercept.getNavigatorKey();
  late GoRouter router;

  AppRouter() {
    router = GoRouter(
      initialLocation: RouteConstants.splashPath,
      navigatorKey: _navigatorKey,
      routes: [
        GoRoute(
          name: RouteConstants.splash,
          path: RouteConstants.splashPath,
          builder: (context, state) => const SplashPage(),
        ),
        GoRoute(
          name: RouteConstants.login,
          path: RouteConstants.loginPath,
          builder: (context, state) => const LoginPage(),
          routes: [
            // GoRoute(
            //   name: RouteConstants.verification,
            //   path: RouteConstants.verificationPath,
            //   builder: (context, state) => const VerificationPage(),
            // ),
            GoRoute(
              name: RouteConstants.register,
              path: RouteConstants.registerPath,
              builder: (context, state) => const RegisterPage(),
            ),
          ],
        ),
        GoRoute(
          name: RouteConstants.root,
          path: RouteConstants.rootPath,
          parentNavigatorKey: _navigatorKey,
          builder: (context, state) {
            final tab =
                int.tryParse(state.pathParameters['root_tab'] ?? '') ?? 0;
            return DashboardPage(
              key: state.pageKey,
              currentTab: tab,
            );
          },
          routes: [
            //     GoRoute(
            //       name: RouteConstants.productDetail,
            //       path: RouteConstants.productDetailPath,
            //       builder: (context, state) {
            //         final args = state.extra as ProductModel;
            //         return ProductDetailPage(data: args);
            //       },
            //     ),
            GoRoute(
                name: RouteConstants.cart,
                path: RouteConstants.cartPath,
                parentNavigatorKey: _navigatorKey,
                builder: (context, state) => const CartPage(),
                routes: [
                  GoRoute(
                      name: RouteConstants.orderDetail,
                      parentNavigatorKey: _navigatorKey,
                      path: RouteConstants.orderDetailPath,
                      builder: (context, state) => const OrderDetailPage(),
                      routes: [
                        GoRoute(
                          name: RouteConstants.paymentDetail,
                          parentNavigatorKey: _navigatorKey,
                          path: RouteConstants.paymentDetailPath,
                          builder: (context, state) =>
                              const PaymentDetailPage(),
                          routes: [
                            GoRoute(
                              name: RouteConstants.paymentWaiting,
                              path: RouteConstants.paymentWaitingPath,
                              builder: (context, state) =>
                                  const PaymentWaitingPage(),
                            ),
                          ],
                        ),
                      ]),
                  // GoRoute(
                  //   name: RouteConstants.paymentDetail,
                  //   path: RouteConstants.paymentDetailPath,
                  //   builder: (context, state) => const PaymentDetailPage(),
                  // ),
                  // GoRoute(
                  //   name: RouteConstants.trackingOrder,
                  //   path: RouteConstants.trackingOrderPath,
                  //   builder: (context, state) => const TrackingOrderPage(),
                  // ),
                ]),
            GoRoute(
                name: RouteConstants.address,
                path: RouteConstants.addressPath,
                builder: (context, state) => const AddressPage(),
                routes: [
                  GoRoute(
                    name: RouteConstants.addAddress,
                    path: RouteConstants.addAddressPath,
                    builder: (context, state) => const AddAddressPage(),
                  ),
                  GoRoute(
                    name: RouteConstants.editAddress,
                    path: RouteConstants.editAddressPath,
                    builder: (context, state) {
                      final args = AddressModel.fromMap(
                          state.extra as Map<String, dynamic>);
                      return EditAddressPage(data: args);
                    },
                  )
                ]),
            //         GoRoute(
            //           name: RouteConstants.orderDetail,
            //           path: RouteConstants.orderDetailPath,
            //           builder: (context, state) => const OrderDetailPage(),
            //           routes: [
            //             GoRoute(
            //               name: RouteConstants.paymentDetail,
            //               path: RouteConstants.paymentDetailPath,
            //               builder: (context, state) => const PaymentDetailPage(),
            //               routes: [
            //                 GoRoute(
            //                   name: RouteConstants.trackingOrder,
            //                   path: RouteConstants.trackingOrderPath,
            //                   builder: (context, state) => const TrackingOrderPage(),
            //                   routes: [
            //                     GoRoute(
            //                       name: RouteConstants.shippingDetail,
            //                       path: RouteConstants.shippingDetailPath,
            //                       builder: (context, state) =>
            //                           const ShippingDetailPage(),
            //                     ),
            //                   ],
            //                 ),
            //               ],
            //             ),
            //           ],
            //         ),
            //       ],
            //     ),
          ],
        ),
      ],
      errorPageBuilder: (context, state) {
        return MaterialPage(
          key: state.pageKey,
          child: Scaffold(
            body: Center(
              child: Text(
                state.error.toString(),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        );
      },
    );
  }
}
