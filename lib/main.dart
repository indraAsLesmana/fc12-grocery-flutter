import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fic12_grocery_app/data/models/address_model/address_remote_datasource.dart';
import 'package:flutter_fic12_grocery_app/data/models/auth_response_model/auth_api.dart';
import 'package:flutter_fic12_grocery_app/data/models/category_response_model/category_api.dart';
import 'package:flutter_fic12_grocery_app/data/models/order_model/order_api.dart';
import 'package:flutter_fic12_grocery_app/data/models/rajaongkir_model/rajaongkir_remote_datasource.dart';
import 'package:flutter_fic12_grocery_app/presentation/address/bloc/add_address/add_address_bloc.dart';
import 'package:flutter_fic12_grocery_app/presentation/address/bloc/address/address_bloc.dart';
import 'package:flutter_fic12_grocery_app/presentation/address/bloc/city/city_bloc.dart';
import 'package:flutter_fic12_grocery_app/presentation/address/bloc/province/province_bloc.dart';
import 'package:flutter_fic12_grocery_app/presentation/address/bloc/subdistrict/subdistrict_bloc.dart';
import 'package:flutter_fic12_grocery_app/presentation/auth/bloc/login/login_bloc.dart';
import 'package:flutter_fic12_grocery_app/presentation/auth/bloc/logout/logout_bloc.dart';
import 'package:flutter_fic12_grocery_app/presentation/home/bloc/category/category_product_bloc.dart';
import 'package:flutter_fic12_grocery_app/presentation/home/bloc/checkout/checkout_bloc.dart';
import 'package:flutter_fic12_grocery_app/presentation/orders/bloc/cost/cost_bloc.dart';
import 'package:flutter_fic12_grocery_app/presentation/orders/bloc/order/order_bloc.dart';

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
          create: (context) => LoginBloc(AuthApi()),
        ),
        BlocProvider(
          create: (context) => LogoutBloc(AuthApi()),
        ),
        BlocProvider(
          create: (context) => AddressBloc(AddressRemoteDataSource()),
        ),
        BlocProvider(
          create: (context) => AddAddressBloc(AddressRemoteDataSource()),
        ),
        BlocProvider(
          create: (context) => ProvinceBloc(RajaongkirRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => CityBloc(RajaongkirRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => SubdistrictBloc(RajaongkirRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => CostBloc(RajaongkirRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => OrderBloc(OrderApi()),
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
