import 'package:bloc/bloc.dart';
import 'package:flutter_fic12_grocery_app/data/models/category_response_model/category_product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_product_event.dart';
part 'category_product_state.dart';
part 'category_product_bloc.freezed.dart';

class CategoryProductBloc
    extends Bloc<CategoryProductEvent, CategoryProductState> {
  CategoryProductBloc() : super(_Initial()) {
    on<CategoryProductEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
