part of 'category_product_bloc.dart';

@freezed
class CategoryProductState with _$CategoryProductState {
  const factory CategoryProductState.initial() = _Initial;
  const factory CategoryProductState.loading() = _Loading;
  const factory CategoryProductState.loaded(List<CategoryProduct> categories) =
      _Loaded;
  const factory CategoryProductState.error(String message) = _Error;
}
