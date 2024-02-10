part of 'search_product_bloc.dart';

@freezed
class SearchProductEvent with _$SearchProductEvent {
  const factory SearchProductEvent.started() = _Started;
  const factory SearchProductEvent.onTextChanged(String? keyword) =
      _TextChanged;
  const factory SearchProductEvent.onPassingArgument(String? keyword) =
      _ArgumentPass;
}
