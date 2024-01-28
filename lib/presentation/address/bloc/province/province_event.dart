part of 'province_bloc.dart';

@freezed
class ProvinceEvent with _$ProvinceEvent {
  const factory ProvinceEvent.started() = _Started;
  const factory ProvinceEvent.getProvinces() = _GetProvinces;
}