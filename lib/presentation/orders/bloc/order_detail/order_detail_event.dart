part of 'order_detail_bloc.dart';

@freezed
class OrderDetailEvent with _$OrderDetailEvent {
  const factory OrderDetailEvent.started() = _Started;
  //get order detail
  const factory OrderDetailEvent.getOrderDetail(int orderId) = _GetOrderDetail;
}