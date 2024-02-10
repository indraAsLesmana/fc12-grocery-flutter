part of 'search_product_bloc.dart';

@freezed
class SearchProductState with _$SearchProductState {
  const factory SearchProductState.onEmpty() = _Empty;
  const factory SearchProductState.onLoading() = _Loading;
  const factory SearchProductState.onLoaded(List<Product> products) = _Loaded;
  const factory SearchProductState.onError(String message) = _Error;
}
