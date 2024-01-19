import 'package:dartz/dartz.dart';
import 'package:flutter_fic12_grocery_app/core/constants/variables.dart';
import 'package:flutter_fic12_grocery_app/data/models/category_response_model/category_response_model.dart';
import 'package:http/http.dart' as http;

class CategoryApi {
  Future<Either<String, CategoryResponseModel>> getCategoriesProduct() async {
    final response =
        await http.get(Uri.parse('${Variables.baseUrl}/api/categories'));

    if (response.statusCode == 200) {
      return Right(CategoryResponseModel.fromJson(response.body));
    } else {
      return const Left('Something went wrong');
    }
  }
}
