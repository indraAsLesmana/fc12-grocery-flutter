import 'package:bloc/bloc.dart';
import 'package:flutter_fic12_grocery_app/data/models/order_model/order_api.dart';
import 'package:flutter_fic12_grocery_app/data/models/order_model/order_request_model.dart';
import 'package:flutter_fic12_grocery_app/data/models/order_model/order_response_model.dart';
import 'package:flutter_fic12_grocery_app/data/models/product_quantity_model/product_quantity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_bloc.freezed.dart';
part 'order_event.dart';
part 'order_state.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  final OrderApi orderRemoteDatasource;
  OrderBloc(
    this.orderRemoteDatasource,
  ) : super(const _Initial()) {
    on<_DoOrder>((event, emit) async {
      emit(const _Loading());
      final orderRequestData = OrderRequestModel(
          addressId: event.addressId,
          paymentMethod: event.paymentMethod,
          shippingService: event.shippingService,
          shippingCost: event.shippingCost,
          paymentVaName: event.paymentVaName,
          subtotal: 0,
          totalCost: 0,
          items: event.products
              .map((e) =>
                  Item(productId: e.product?.productId, quantity: e.quantity))
              .toList());
      final response = await orderRemoteDatasource.order(orderRequestData);
      response.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r)),
      );
    });
  }
}
