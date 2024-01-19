import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fic12_grocery_app/data/models/category_response_model/category_api.dart';
import 'package:flutter_fic12_grocery_app/data/models/category_response_model/category_product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_product_event.dart';
part 'category_product_state.dart';
part 'category_product_bloc.freezed.dart';

class CategoryBloc extends Bloc<CategoryProductEvent, CategoryProductState> {
  final CategoryApi _categoryRemoteDatasource;
  CategoryBloc(
    this._categoryRemoteDatasource,
  ) : super(const _Initial()) {
    on<_GetCategoryProduct>((event, emit) async {
      final response = await _categoryRemoteDatasource.getCategoriesProduct();
      response.fold(
        (l) => emit(const CategoryProductState.error('Internal Server Error')),
        (r) => emit(CategoryProductState.loaded(r.data!)),
      );
    });
  }
}
