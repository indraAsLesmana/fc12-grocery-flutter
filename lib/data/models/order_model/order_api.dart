import 'dart:convert';

import 'package:chuck_interceptor/core/chuck_http_extensions.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_fic12_grocery_app/chuck_interceptor.dart';
import 'package:flutter_fic12_grocery_app/core/constants/variables.dart';
import 'package:flutter_fic12_grocery_app/data/models/auth_response_model/auth_local_datasource.dart';
import 'package:flutter_fic12_grocery_app/data/models/history_response_model/history_order_response_model.dart';
import 'package:flutter_fic12_grocery_app/data/models/order_detail_response/order_detail_response_model.dart';
import 'package:flutter_fic12_grocery_app/data/models/order_model/order_request_model.dart';
import 'package:http/http.dart' as http;

class OrderApi {
  Future<Either<String, Map<String, dynamic>>> order(
      OrderRequestModel orderRequestModel) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final response = await http
        .post(
          Uri.parse('${Variables.baseUrl}/api/order'),
          headers: {
            'Accept': 'application/json',
            'Content-type': 'application/json',
            'Authorization': 'Bearer ${authData!.accessToken}'
          },
          body: orderRequestModel.toJsonRequest(),
        )
        .interceptWithChuck(ChuckInterceptor().intercept);

    if (response.statusCode == 200) {
      return right(json.decode(response.body));
    } else {
      return left('Error');
    }
  }

  Future<Either<String, String>> checkPaymentStatus(int orderId) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final response = await http.get(
      Uri.parse('${Variables.baseUrl}/api/order/$orderId'),
      headers: {
        'Accept': 'application/json',
        'Content-type': 'application/json',
        'Authorization': 'Bearer ${authData!.accessToken}'
      },
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return right(data['order']['status']);
    } else {
      return left('Error');
    }
  }

  //get orders by user id
  Future<Either<String, HistoryOrderResponseModel>> getOrders() async {
    final authData = await AuthLocalDatasource().getAuthData();
    final response = await http.get(
      Uri.parse('${Variables.baseUrl}/api/orders'),
      headers: {
        'Accept': 'application/json',
        'Content-type': 'application/json',
        'Authorization': 'Bearer ${authData!.accessToken}'
      },
    );

    if (response.statusCode == 200) {
      final orderList = HistoryOrderResponseModel.fromJson(response.body);
      return right(orderList);
    } else {
      return left('Error');
    }
  }

  //get order by id
  Future<Either<String, OrderDetailResponseModel>> getOrderById(
      int orderId) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final response = await http.get(
      Uri.parse('${Variables.baseUrl}/api/order/$orderId'),
      headers: {
        'Accept': 'application/json',
        'Content-type': 'application/json',
        'Authorization': 'Bearer ${authData!.accessToken}'
      },
    );

    if (response.statusCode == 200) {
      final order = OrderDetailResponseModel.fromJson(response.body);
      return right(order);
    } else {
      return left('Error');
    }
  }
}
