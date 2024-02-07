part of 'history_order_bloc.dart';

@freezed
class HistoryOrderEvent with _$HistoryOrderEvent {
  const factory HistoryOrderEvent.started() = _Started;
  const factory HistoryOrderEvent.getHistoryOrder() = _HistoryOrder;
}