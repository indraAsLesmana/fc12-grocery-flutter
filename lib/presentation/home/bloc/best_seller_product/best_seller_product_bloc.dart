import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'best_seller_product_event.dart';
part 'best_seller_product_state.dart';
part 'best_seller_product_bloc.freezed.dart';

class BestSellerProductBloc
    extends Bloc<BestSellerProductEvent, BestSellerProductState> {
  BestSellerProductBloc() : super(_Initial()) {
    on<BestSellerProductEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
