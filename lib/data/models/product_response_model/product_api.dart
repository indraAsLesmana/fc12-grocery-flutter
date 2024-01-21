import 'package:dartz/dartz.dart';
import 'package:flutter_fic12_grocery_app/core/constants/variables.dart';
import 'package:flutter_fic12_grocery_app/data/models/product_response_model/product_response_model.dart';
import 'package:http/http.dart' as http;

class ProductApi {
  Future<Either<String, ProductResponseModel>> getAllProducts() async {
    final response =
        await http.get(Uri.parse('${Variables.baseUrl}/api/products'));

    if (response.statusCode == 200) {
      return Right(ProductResponseModel.fromJson(response.body));
    } else {
      return const Left('Something went wrong');
    }
  }
}
