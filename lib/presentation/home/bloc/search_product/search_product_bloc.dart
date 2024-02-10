import 'package:bloc/bloc.dart';
import 'package:flutter_fic12_grocery_app/data/models/product_response_model/product.dart';
import 'package:flutter_fic12_grocery_app/data/models/product_response_model/product_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';

part 'search_product_event.dart';
part 'search_product_state.dart';
part 'search_product_bloc.freezed.dart';

const _duration = Duration(seconds: 2);

EventTransformer<Event> debounce<Event>(Duration duration) {
  return (events, mapper) => events.debounceTime(duration).switchMap(mapper);
}

class SearchProductBloc extends Bloc<SearchProductEvent, SearchProductState> {
  final ProductApi _productApi;
  SearchProductBloc(this._productApi) : super(const _Loading()) {
    on<_ArgumentPass>((event, emit) async {
      // implement product search by category
      final response = await _productApi.getProducts(category: event.keyword);
      response.fold(
        (l) => emit(const SearchProductState.onError('Internal Server Error')),
        (r) => emit((r.data?.data?.isNotEmpty == true)
            ? SearchProductState.onLoaded(r.data!.data!)
            : const SearchProductState.onNotFound()),
      );
    });

    on<_TextChanged>(transformer: debounce(_duration), (event, emit) async {
      // if (event.keyword?.isEmpty ?? true) return emit(const _Empty());
      if ((event.keyword?.isEmpty ?? true) ||
          ((event.keyword?.length ?? 0) <= 3)) return emit(const _Empty());
      emit(const _Loading());
      // implement product search
      final response = await _productApi.getProducts(search: event.keyword);
      response.fold(
        (l) => emit(const SearchProductState.onError('Internal Server Error')),
        (r) => emit((r.data?.data?.isNotEmpty == true)
            ? SearchProductState.onLoaded(r.data!.data!)
            : const SearchProductState.onNotFound()),
      );
    });
  }
}
