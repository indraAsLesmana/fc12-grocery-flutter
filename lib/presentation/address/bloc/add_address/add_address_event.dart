part of 'add_address_bloc.dart';

@freezed
class AddAddressEvent with _$AddAddressEvent {
  const factory AddAddressEvent.started() = _Started;
  const factory AddAddressEvent.addAddress({
   required AddressRequestModel addressRequestModel,
  }) = _AddAddress;
}