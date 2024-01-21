import 'package:bloc/bloc.dart';
import 'package:flutter_fic12_grocery_app/data/models/product_response_model/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_product_event.dart';
part 'all_product_state.dart';
part 'all_product_bloc.freezed.dart';

class AllProductBloc extends Bloc<AllProductEvent, AllProductState> {
  AllProductBloc() : super(_Initial()) {
    on<AllProductEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
