import 'package:dartz/dartz.dart';
import 'package:flutter_fic12_grocery_app/core/constants/variables.dart';
import 'package:flutter_fic12_grocery_app/data/models/address_model/address_request_model.dart';
import 'package:flutter_fic12_grocery_app/data/models/address_model/address_response_model.dart';
import 'package:flutter_fic12_grocery_app/data/models/auth_response_model/auth_local_datasource.dart';

import 'package:http/http.dart' as http;

class AddressRemoteDataSource {
  Future<Either<String, AddressResponseModel>> getAddresses() async {
    try {
      final authData = await AuthLocalDatasource().getAuthData();
      final response = await http.get(
        Uri.parse('${Variables.baseUrl}/api/address'),
        headers: {
          'Authorization': 'Bearer ${authData!.accessToken}',
          'Accept': 'application/json',
        },
      );
      if (response.statusCode == 200) {
        return Right(AddressResponseModel.fromJson(response.body));
      } else {
        return const Left('Error');
      }
    } catch (e) {
      return const Left('Error');
    }
  }

  Future<Either<String, String>> addAddress(AddressRequestModel data) async {
    try {
      final authData = await AuthLocalDatasource().getAuthData();
      final response = await http.post(
        Uri.parse('${Variables.baseUrl}/api/address'),
        headers: {
          'Authorization': 'Bearer ${authData!.accessToken}',
          'Accept': 'application/json',
          'Content-type': 'application/json',
        },
        body: data.toJson(),
      );
      if (response.statusCode == 201) {
        return const Right('Success');
      } else {
        return const Left('Error');
      }
    } catch (e) {
      return const Left('Error');
    }
  }
}
