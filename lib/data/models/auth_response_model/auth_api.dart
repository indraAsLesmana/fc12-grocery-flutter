import 'package:chuck_interceptor/core/chuck_http_extensions.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_fic12_grocery_app/chuck_interceptor.dart';
import 'package:flutter_fic12_grocery_app/core/constants/variables.dart';
import 'package:flutter_fic12_grocery_app/data/models/auth_response_model/auth_local_datasource.dart';
import 'package:flutter_fic12_grocery_app/data/models/auth_response_model/auth_response_model.dart';
import 'package:http/http.dart' as http;

class AuthApi {
  Future<Either<String, AuthResponseModel>> login(
    String email,
    String password,
  ) async {
    final response = await http.post(
      Uri.parse('${Variables.baseUrl}/api/login'),
      // headers: <String, String>{
      //   'Content-Type': 'application/json; charset=UTF-8',
      // },
      body: {
        'email': email,
        'password': password,
      },
    ).interceptWithChuck(ChuckInterceptor().intercept);

    if (response.statusCode == 200) {
      return Right(AuthResponseModel.fromJson(response.body));
    } else {
      return Left(response.body);
    }
  }

  //logout
  Future<Either<String, String>> logout() async {
    final authData = await AuthLocalDatasource().getAuthData();
    final response = await http.post(
        Uri.parse('${Variables.baseUrl}/api/logout'),
        headers: {'Authorization': 'Bearer ${authData?.accessToken}'});

    if (response.statusCode == 200) {
      AuthLocalDatasource().removeAuthData();
      return Right(response.body);
    } else {
      return Left(response.body);
    }
  }

  //update fcm token
  Future<Either<String, String>> updateFcmToken(String fcmToken) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final response = await http.post(
      Uri.parse('${Variables.baseUrl}/api/update-fcmid'),
      headers: {
        'Authorization': 'Bearer ${authData?.accessToken}',
        'Accept': 'application/json',
      },
      body: {'fcm_id': fcmToken},
    );

    if (response.statusCode == 200) {
      return Right(response.body);
    } else {
      return Left(response.body);
    }
  }
}
