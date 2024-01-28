import 'package:bloc/bloc.dart';
import 'package:flutter_fic12_grocery_app/data/models/address_model/address_remote_datasource.dart';
import 'package:flutter_fic12_grocery_app/data/models/address_model/address_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_bloc.freezed.dart';
part 'address_event.dart';
part 'address_state.dart';

class AddressBloc extends Bloc<AddressEvent, AddressState> {
  final AddressRemoteDataSource addressRemoteDataSource;
  AddressBloc(
    this.addressRemoteDataSource,
  ) : super(const _Initial()) {
    on<_GetAddresses>((event, emit) async {
      emit(const _Loading());
      final response = await addressRemoteDataSource.getAddresses();
      response.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r.data ?? [])),
      );
    });
  }
}
