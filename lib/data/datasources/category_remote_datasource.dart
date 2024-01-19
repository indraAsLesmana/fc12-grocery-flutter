import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import '../../core/constants/variables.dart';
import '../models/responses/category_response_model.dart';

class CategoryRemoteDatasource {
  Future<Either<String, CategoryResponseModel>> getCategories() async {
    final response =
        await http.get(Uri.parse('${Variables.baseUrl}/api/categories'));

    if (response.statusCode == 200) {
      return Right(CategoryResponseModel.fromJson(response.body));
    } else {
      return const Left('Internal Server Error');
    }
  }
}
