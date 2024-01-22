import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fic12_grocery_app/data/models/category_response_model/category_api.dart';
import 'package:flutter_fic12_grocery_app/data/models/product_response_model/product_api.dart';
import 'package:flutter_fic12_grocery_app/presentation/home/bloc/all_product/all_product_bloc.dart';
import 'package:flutter_fic12_grocery_app/presentation/home/bloc/category/category_product_bloc.dart';
import 'package:flutter_fic12_grocery_app/presentation/home/bloc/checkout/checkout_bloc.dart';

import 'core/router/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    final router = appRouter.router;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CategoryBloc(CategoryApi()),
        ),
        BlocProvider(
          create: (context) => AllProductBloc(ProductApi()),
        ),
        BlocProvider(
          create: (context) => CheckoutBloc(),
        ),
      ],
      child: MaterialApp.router(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routerDelegate: router.routerDelegate,
        routeInformationParser: router.routeInformationParser,
        routeInformationProvider: router.routeInformationProvider,
      ),
    );
  }
}
