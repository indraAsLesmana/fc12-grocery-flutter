part of 'order_bloc.dart';

@freezed
class OrderEvent with _$OrderEvent {
  const factory OrderEvent.started() = _Started;
  //doOrder
  const factory OrderEvent.doOrder({
    required int addressId,
    required String paymentMethod,
    required String shippingService,
    required int shippingCost,
    required String paymentVaName,
    required List<ProductQuantity> products,
  }) = _DoOrder;
}