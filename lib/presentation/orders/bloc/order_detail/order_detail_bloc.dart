import 'package:bloc/bloc.dart';
import 'package:flutter_fic12_grocery_app/data/models/order_detail_response/order_detail_response_model.dart';
import 'package:flutter_fic12_grocery_app/data/models/order_model/order_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_detail_bloc.freezed.dart';
part 'order_detail_event.dart';
part 'order_detail_state.dart';

class OrderDetailBloc extends Bloc<OrderDetailEvent, OrderDetailState> {
  final OrderApi orderRemoteDatasource;
  OrderDetailBloc(
    this.orderRemoteDatasource,
  ) : super(const _Initial()) {
    on<_GetOrderDetail>((event, emit) async {
      emit(const _Loading());
      final result = await orderRemoteDatasource.getOrderById(event.orderId);
      result.fold(
        (l) => emit(const _Error('Error')),
        (r) => emit(_Loaded(r.order!)),
      );
    });
  }
}
