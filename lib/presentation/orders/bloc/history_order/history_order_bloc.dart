import 'package:bloc/bloc.dart';
import 'package:flutter_fic12_grocery_app/data/models/history_response_model/history_order_response_model.dart';
import 'package:flutter_fic12_grocery_app/data/models/order_model/order_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_order_bloc.freezed.dart';
part 'history_order_event.dart';
part 'history_order_state.dart';

class HistoryOrderBloc extends Bloc<HistoryOrderEvent, HistoryOrderState> {
  final OrderApi orderRemoteDatasource;
  HistoryOrderBloc(
    this.orderRemoteDatasource,
  ) : super(const _Initial()) {
    on<_HistoryOrder>((event, emit) async {
      emit(const _Loading());
      final response = await orderRemoteDatasource.getOrders();
      response.fold(
        (l) => emit(const _Error('Error')),
        (r) => emit(_Loaded(r)),
      );
    });
  }
}
