import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fic12_grocery_app/data/models/product_quantity_model/product_quantity.dart';
import 'package:flutter_fic12_grocery_app/data/models/product_response_model/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkout_event.dart';
part 'checkout_state.dart';
part 'checkout_bloc.freezed.dart';

class CheckoutBloc extends Bloc<CheckoutEvent, CheckoutState> {
  CheckoutBloc() : super(const _Loaded([])) {
    on<_AddItem>((event, emit) {
      final currentState = state as _Loaded;
      if (currentState.productQuantity.any(
          (element) => element.product?.productId == event.product.productId)) {
        final index = currentState.productQuantity.indexWhere(
            (element) => element.product?.productId == event.product.productId);
        final item = currentState.productQuantity[index];
        final newItem = item.copyWith(quantity: item.quantity! + 1);
        final newItems = currentState.productQuantity
            .map((e) => e == item ? newItem : e)
            .toList();
        emit(_Loaded(newItems));
      } else {
        final newItem = ProductQuantity(product: event.product, quantity: 1);
        final newItems = [...currentState.productQuantity, newItem];
        emit(_Loaded(newItems));
      }
    });
  }
}
