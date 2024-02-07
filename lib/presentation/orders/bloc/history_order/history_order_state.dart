part of 'history_order_bloc.dart';

@freezed
class HistoryOrderState with _$HistoryOrderState {
  const factory HistoryOrderState.initial() = _Initial;
  const factory HistoryOrderState.loading() = _Loading;
  const factory HistoryOrderState.loaded(HistoryOrderResponseModel orders) = _Loaded;
  const factory HistoryOrderState.error(String message) = _Error;
}
