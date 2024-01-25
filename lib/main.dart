import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fic12_grocery_app/data/models/auth_response_model/auth_remote_datasource.dart';
import 'package:flutter_fic12_grocery_app/data/models/category_response_model/category_api.dart';
import 'package:flutter_fic12_grocery_app/presentation/auth/bloc/login/login_bloc.dart';
import 'package:flutter_fic12_grocery_app/presentation/auth/bloc/logout/logout_bloc.dart';
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
          create: (context) => CheckoutBloc(),
        ),
        BlocProvider(
          create: (context) => LoginBloc(AuthRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => LogoutBloc(AuthRemoteDatasource()),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
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
