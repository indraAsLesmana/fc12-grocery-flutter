part of 'checkout_bloc.dart';

@freezed
class CheckoutEvent with _$CheckoutEvent {
  const factory CheckoutEvent.started() = _Started;
  const factory CheckoutEvent.addItem(Product product) = _AddItem;
  const factory CheckoutEvent.removeItem(Product product) = _RemoveItem;
  //add address id
  const factory CheckoutEvent.addAddressId(int addressId) = _AddAddressId;
  //add payment method
  const factory CheckoutEvent.addPaymentMethod(String paymentMethod) =
      _AddPaymentMethod;
  //add shipping service
  const factory CheckoutEvent.addShippingService(
      String shippingService, int shippingCost) = _AddShippingService;

  const factory CheckoutEvent.removeOrder(Product product) = _RemoveOrder;
}
