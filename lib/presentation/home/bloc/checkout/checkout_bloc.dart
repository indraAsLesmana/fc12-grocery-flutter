import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fic12_grocery_app/data/models/product_quantity_model/product_quantity.dart';
import 'package:flutter_fic12_grocery_app/data/models/product_response_model/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkout_event.dart';
part 'checkout_state.dart';
part 'checkout_bloc.freezed.dart';

class CheckoutBloc extends Bloc<CheckoutEvent, CheckoutState> {
  CheckoutBloc() : super(const _Loaded([], 0, '', '', 0, '')) {
    on<_AddItem>((event, emit) {
      final currentState = state as _Loaded;
      if (currentState.products.any(
          (element) => element.product?.productId == event.product.productId)) {
        final index = currentState.products.indexWhere(
            (element) => element.product?.productId == event.product.productId);
        final item = currentState.products[index];
        final newItem = item.copyWith(quantity: (item.quantity ?? 0) + 1);
        final newItems =
            currentState.products.map((e) => e == item ? newItem : e).toList();
        emit(_Loaded(
            newItems,
            currentState.addressId,
            currentState.paymentMethod,
            currentState.shippingService,
            currentState.shippingCost,
            currentState.shippingService));
      } else {
        final newItem = ProductQuantity(product: event.product, quantity: 1);
        final newItems = [...currentState.products, newItem];
        emit(_Loaded(
            newItems,
            currentState.addressId,
            currentState.paymentMethod,
            currentState.shippingService,
            currentState.shippingCost,
            currentState.shippingService));
      }
    });

    on<_RemoveItem>((event, emit) {
      final currentState = state as _Loaded;
      if (currentState.products.any(
          (element) => element.product?.productId == event.product.productId)) {
        final index = currentState.products.indexWhere(
            (element) => element.product?.productId == event.product.productId);
        final item = currentState.products[index];
        //if quantity is 1, remove the item
        if (item.quantity == 1) {
          final newItems = currentState.products
              .where((element) =>
                  element.product?.productId != event.product.productId)
              .toList();
          emit(_Loaded(
              newItems,
              currentState.addressId,
              currentState.paymentMethod,
              currentState.shippingService,
              currentState.shippingCost,
              currentState.shippingService));
        } else {
          final newItem = item.copyWith(quantity: (item.quantity ?? 0) - 1);
          final newItems = currentState.products
              .map((e) => e == item ? newItem : e)
              .toList();
          emit(_Loaded(
              newItems,
              currentState.addressId,
              currentState.paymentMethod,
              currentState.shippingService,
              currentState.shippingCost,
              currentState.shippingService));
        }
      }
    });

    on<_AddAddressId>((event, emit) {
      final currentState = state as _Loaded;
      emit(_Loaded(
          currentState.products,
          event.addressId,
          currentState.paymentMethod,
          currentState.shippingService,
          currentState.shippingCost,
          currentState.shippingService));
    });

    on<_AddPaymentMethod>((event, emit) {
      final currentState = state as _Loaded;
      emit(_Loaded(
          currentState.products,
          currentState.addressId,
          'bank_transfer',
          currentState.shippingService,
          currentState.shippingCost,
          event.paymentMethod));
    });

    on<_AddShippingService>((event, emit) {
      final currentState = state as _Loaded;
      emit(_Loaded(
          currentState.products,
          currentState.addressId,
          currentState.paymentMethod,
          event.shippingService,
          event.shippingCost,
          currentState.paymentMethod));
    });

    on<_RemoveOrder>((event, emit) {
      final currentState = state as _Loaded;
      if (currentState.products.any(
          (element) => element.product?.productId == event.product.productId)) {
        final index = currentState.products.indexWhere(
            (element) => element.product?.productId == event.product.productId);

        // Create a new list from the current state
        final newList = List<ProductQuantity>.from(currentState.products);
        // Remove item from the new list
        newList.removeAt(index);
        emit(_Loaded(
          newList,
          currentState.addressId,
          currentState.paymentMethod,
          currentState.shippingService,
          currentState.shippingCost,
          currentState.shippingService,
        ));
      }
    });
  }
}


// class CheckoutBloc extends Bloc<CheckoutEvent, CheckoutState> {
//   CheckoutBloc() : super(const _Loaded([])) {
//     on<_AddItem>((event, emit) {
//       final currentState = state as _Loaded;
//       if (currentState.productQuantity.any(
//           (element) => element.product?.productId == event.product.productId)) {
//         final index = currentState.productQuantity.indexWhere(
//             (element) => element.product?.productId == event.product.productId);
//         final item = currentState.productQuantity[index];
//         final newItem = item.copyWith(quantity: item.quantity! + 1);
//         final newItems = currentState.productQuantity
//             .map((e) => e == item ? newItem : e)
//             .toList();
//         emit(_Loaded(newItems));
//       } else {
//         final newItem = ProductQuantity(product: event.product, quantity: 1);
//         final newItems = [...currentState.productQuantity, newItem];
//         emit(_Loaded(newItems));
//       }
//     });

//     on<_RemoveItem>((event, emit) {
//       final currentState = state as _Loaded;
//       if (currentState.productQuantity.any(
//           (element) => element.product?.productId == event.product.productId)) {
//         final index = currentState.productQuantity.indexWhere(
//             (element) => element.product?.productId == event.product.productId);
//         final item = currentState.productQuantity[index];
//         //if quantity is 1, remove the item
//         if (item.quantity == 1) {
//           final newItems = currentState.productQuantity
//               .where((element) =>
//                   element.product?.productId != event.product.productId)
//               .toList();
//           emit(_Loaded(newItems));
//         } else {
//           int? quantity = item.quantity;
//           if (quantity == null) return;

//           final newItem = item.copyWith(quantity: quantity - 1);
//           final newItems = currentState.productQuantity
//               .map((e) => e == item ? newItem : e)
//               .toList();
//           emit(_Loaded(newItems));
//         }
//       }
//     });

//     on<_RemoveOrder>((event, emit) {
//       final currentState = state as _Loaded;
//       if (currentState.productQuantity.any((element) =>
//           element.product?.productId ==
//           event.productQuantity.product?.productId)) {
//         final index = currentState.productQuantity.indexWhere((element) =>
//             element.product?.productId ==
//             event.productQuantity.product?.productId);

//         // Create a new list from the current state
//         final newList =
//             List<ProductQuantity>.from(currentState.productQuantity);
//         // Remove item from the new list
//         newList.removeAt(index);
//         emit(_Loaded(newList));
//       }
//     });
//   }
// }
