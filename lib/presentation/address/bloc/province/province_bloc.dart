import 'package:bloc/bloc.dart';
import 'package:flutter_fic12_grocery_app/data/models/location_model/province_response_model.dart';
import 'package:flutter_fic12_grocery_app/data/models/rajaongkir_model/rajaongkir_remote_datasource.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'province_bloc.freezed.dart';
part 'province_event.dart';
part 'province_state.dart';

class ProvinceBloc extends Bloc<ProvinceEvent, ProvinceState> {
  final RajaongkirRemoteDatasource rajaongkirRemoteDatasource;
  ProvinceBloc(
    this.rajaongkirRemoteDatasource,
  ) : super(const _Initial()) {
    on<_GetProvinces>((event, emit) async {
      emit(const _Loading());
      final response = await rajaongkirRemoteDatasource.getProvinces();
      response.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r.rajaongkir?.results ?? [])),
      );
    });
  }
}
