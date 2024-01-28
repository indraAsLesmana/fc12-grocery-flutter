import 'package:bloc/bloc.dart';
import 'package:flutter_fic12_grocery_app/data/models/location_model/city_response_model.dart';
import 'package:flutter_fic12_grocery_app/data/models/rajaongkir_model/rajaongkir_remote_datasource.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_bloc.freezed.dart';
part 'city_event.dart';
part 'city_state.dart';

class CityBloc extends Bloc<CityEvent, CityState> {
  final RajaongkirRemoteDatasource rajaongkirRemoteDatasource;
  CityBloc(
    this.rajaongkirRemoteDatasource,
  ) : super(const _Initial()) {
    on<_GetCity>((event, emit) async {
      emit(const _Loading());
      final response =
          await rajaongkirRemoteDatasource.getCitiesByProvince(event.provId);
      response.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r.rajaongkir?.results ?? [])),
      );
    });
  }
}
