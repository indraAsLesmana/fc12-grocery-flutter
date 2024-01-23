import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_fic12_grocery_app/data/models/product_response_model/product.dart';
import 'package:flutter_fic12_grocery_app/data/models/product_response_model/product_api.dart';

part 'all_product_bloc.freezed.dart';
part 'all_product_event.dart';
part 'all_product_state.dart';

class AllProductBloc extends Bloc<AllProductEvent, AllProductState> {
  final ProductApi _productApi;
  AllProductBloc(
    this._productApi,
  ) : super(const _Initial()) {
    on<_GetProducts>((event, emit) async {
      await _fetchProducts(null, emit);
    });

    on<_GetProductsBestSeller>((event, emit) async {
      await _fetchProducts('Fruits', emit);
    });
  }

  Future<void> _fetchProducts(
      String? query, Emitter<AllProductState> emit) async {
    emit(const AllProductState.loading());

    final response = await _productApi.getAllProducts(query);

    response.fold(
      (l) => emit(const AllProductState.error('Internal Server Error')),
      (r) => emit(
        query != null
            ? AllProductState.loadedBestSeller(r.data!.data!)
            : AllProductState.loaded(r.data!.data!),
      ),
    );
  }
}
