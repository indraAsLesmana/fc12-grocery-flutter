part of 'status_order_bloc.dart';

@freezed
class StatusOrderState with _$StatusOrderState {
  const factory StatusOrderState.initial() = _Initial;
  const factory StatusOrderState.loading() = _Loading;
  const factory StatusOrderState.loaded(String status) = _Loaded;
  const factory StatusOrderState.error(String message) = _Error;
}
