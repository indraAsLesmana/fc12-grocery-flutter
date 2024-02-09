part of 'all_product_bloc.dart';

@freezed
class AllProductState with _$AllProductState {
  const factory AllProductState.initial() = _Initial;
  const factory AllProductState.loading() = _Loading;
  const factory AllProductState.loaded(List<Product> products) = _Loaded;
  const factory AllProductState.loadedBestSeller(List<Product> products) =
      _LoadedBestSeller;
  const factory AllProductState.loadedSearch(List<Product> products) =
      _LoadedSearch;
  const factory AllProductState.error(String message) = _Error;
}
