part of 'all_product_bloc.dart';

@freezed
class AllProductEvent with _$AllProductEvent {
  const factory AllProductEvent.started() = _Started;
  const factory AllProductEvent.getProducts() = _GetProducts;
  const factory AllProductEvent.getProductsBestSeller() =
      _GetProductsBestSeller;
  const factory AllProductEvent.getProductsSearch(String keyword) =
      _GetProductsSearch;
}
