part of 'all_product_bloc.dart';

@freezed
class AllProductState with _$AllProductState {
  const factory AllProductState.initial() = _Initial;
  const factory AllProductState.loading() = _Loading;
  const factory AllProductState.loaded(List<Product> products) = _Loaded;
  const factory AllProductState.error(String message) = _Error;
}
