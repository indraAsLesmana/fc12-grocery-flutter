import 'package:chuck_interceptor/core/chuck_http_extensions.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_fic12_grocery_app/chuck_interceptor.dart';
import 'package:flutter_fic12_grocery_app/core/constants/variables.dart';
import 'package:flutter_fic12_grocery_app/core/constants/variables_private.dart';
import 'package:flutter_fic12_grocery_app/data/models/location_model/city_response_model.dart';
import 'package:flutter_fic12_grocery_app/data/models/location_model/province_response_model.dart';
import 'package:flutter_fic12_grocery_app/data/models/location_model/subdistrict_response_model.dart';
import 'package:flutter_fic12_grocery_app/data/models/order_model/cost_response_model.dart';
import 'package:flutter_fic12_grocery_app/data/models/tracking_response_model/tracking_response_model.dart';
import 'package:http/http.dart' as http;

class RajaongkirRemoteDatasource {
  Future<Either<String, ProvinceResponseModel>> getProvinces() async {
    final url = Uri.parse('${Variables.rajaOngkierBaseUrl}/province');
    final response = await http.get(
      url,
      headers: {
        'key': VariablesPrivate.rajaOngkierKey,
      },
    ).interceptWithChuck(ChuckInterceptor().intercept);

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
        'key': VariablesPrivate.rajaOngkierKey,
      },
    ).interceptWithChuck(ChuckInterceptor().intercept);
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
        'key': VariablesPrivate.rajaOngkierKey,
      },
    ).interceptWithChuck(ChuckInterceptor().intercept);
    if (response.statusCode == 200) {
      return right(SubdistrictResponseModel.fromJson(response.body));
    } else {
      return left('Error');
    }
  }

  Future<Either<String, CostResponseModel>> getCost(
      String origin, String destination, int weight, String courier) async {
    final url = Uri.parse('https://pro.rajaongkir.com/api/cost');
    final response = await http.post(
      url,
      headers: {
        'key': VariablesPrivate.rajaOngkierKey,
      },
      body: {
        'origin': origin,
        'originType': 'subdistrict',
        'destination': destination,
        'destinationType': 'subdistrict',
        'weight': weight.toString(),
        'courier': courier,
      },
    ).interceptWithChuck(ChuckInterceptor().intercept);
    if (response.statusCode == 200) {
      return right(CostResponseModel.fromJson(response.body));
    } else {
      return left('Error');
    }
  }

  //tracking
  Future<Either<String, TrackingResponseModel>> getWaybill(
      String courier, String waybill) async {
    final url = Uri.parse('https://pro.rajaongkir.com/api/waybill');
    final response = await http.post(
      url,
      headers: {'key': VariablesPrivate.rajaOngkierKey},
      body: {
        'waybill': '005233704414',
        'courier': 'sicepat', //jne,  sicepat
      },
    );
    if (response.statusCode == 200) {
      return right(TrackingResponseModel.fromJson(response.body));
    } else {
      return left('Error');
    }
  }
}
