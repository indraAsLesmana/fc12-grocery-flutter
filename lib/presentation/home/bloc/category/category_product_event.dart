part of 'category_product_bloc.dart';

@freezed
class CategoryProductEvent with _$CategoryProductEvent {
  const factory CategoryProductEvent.started() = _Started;
  const factory CategoryProductEvent.getCategoryProduct() = _GetCategoryProduct;
}
