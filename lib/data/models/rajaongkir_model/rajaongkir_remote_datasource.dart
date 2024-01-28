import 'package:dartz/dartz.dart';
import 'package:flutter_fic12_grocery_app/core/constants/variables.dart';
import 'package:flutter_fic12_grocery_app/core/constants/variables_private.dart';
import 'package:flutter_fic12_grocery_app/data/models/location_model/city_response_model.dart';
import 'package:flutter_fic12_grocery_app/data/models/location_model/province_response_model.dart';
import 'package:flutter_fic12_grocery_app/data/models/location_model/subdistrict_response_model.dart';
import 'package:http/http.dart' as http;

class RajaongkirRemoteDatasource {
  Future<Either<String, ProvinceResponseModel>> getProvinces() async {
    final url = Uri.parse(Variables.rajaOngkierBaseUrl);
    final response = await http.get(
      url,
      headers: {
        'key': VariablesPrivate.rajaOngkierKey,
      },
    );
    if (response.statusCode == 200) {
      return right(ProvinceResponseModel.fromJson(response.body));
    } else {
      return left('Error');
    }
  }

  //city by province
  Future<Either<String, CityResponseModel>> getCitiesByProvince(
      String provinceId) async {
    final url =
        Uri.parse('${Variables.rajaOngkierBaseUrl}/city?province=$provinceId');
    final response = await http.get(
      url,
      headers: {
        'key': Variables.rajaOngkirKey,
      },
    );
    if (response.statusCode == 200) {
      return right(CityResponseModel.fromJson(response.body));
    } else {
      return left('Error');
    }
  }

  //district by city
  Future<Either<String, SubdistrictResponseModel>> getSubdistrictsByCity(
      String cityId) async {
    final url =
        Uri.parse('${Variables.rajaOngkierBaseUrl}/subdistrict?city=$cityId');
    final response = await http.get(
      url,
      headers: {
        'key': Variables.rajaOngkirKey,
      },
    );
    if (response.statusCode == 200) {
      return right(SubdistrictResponseModel.fromJson(response.body));
    } else {
      return left('Error');
    }
  }
}
