import 'package:bloc/bloc.dart';
import 'package:flutter_fic12_grocery_app/data/models/location_model/subdistrict_response_model.dart';
import 'package:flutter_fic12_grocery_app/data/models/rajaongkir_model/rajaongkir_remote_datasource.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'subdistrict_bloc.freezed.dart';
part 'subdistrict_event.dart';
part 'subdistrict_state.dart';

class SubdistrictBloc extends Bloc<SubdistrictEvent, SubdistrictState> {
  final RajaongkirRemoteDatasource rajaongkirRemoteDatasource;
  SubdistrictBloc(
    this.rajaongkirRemoteDatasource,
  ) : super(const _Initial()) {
    on<_GetSubdistricts>((event, emit) async {
      emit(const _Loading());
      final response =
          await rajaongkirRemoteDatasource.getSubdistrictsByCity(event.cityId);
      response.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r.rajaongkir?.results ?? [])),
      );
    });
  }
}
