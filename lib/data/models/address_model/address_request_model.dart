import 'dart:convert';

// 'name' => $request->name,
//             'full_address' => $request->full_address,
//             'phone' => $request->phone,
//             'prov_id' => $request->prov_id,
//             'city_id' => $request->city_id,
//             'district_id' => $request->district_id,
//             'postal_code' => $request->postal_code,
//             'user_id' => $request->user()->id,
//             'is_default' => $request->is_default,

class AddressRequestModel {
  final String? name;
  final String? fullAddress;
  final String? phone;
  final String? provId;
  final String? cityId;
  final String? districtId;
  final String? postalCode;
  final int? isDefault;

  AddressRequestModel({
    this.name,
    this.fullAddress,
    this.phone,
    this.provId,
    this.cityId,
    this.districtId,
    this.postalCode,
    this.isDefault,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'full_address': fullAddress,
      'phone': phone,
      'prov_id': provId,
      'city_id': cityId,
      'district_id': districtId,
      'postal_code': postalCode,
      'is_default': isDefault,
    };
  }

  factory AddressRequestModel.fromMap(Map<String, dynamic> map) {
    return AddressRequestModel(
      name: map['name'],
      fullAddress: map['fullAddress'],
      phone: map['phone'],
      provId: map['provId'],
      cityId: map['cityId'],
      districtId: map['districtId'],
      postalCode: map['postalCode'],
      isDefault: map['isDefault']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory AddressRequestModel.fromJson(String source) =>
      AddressRequestModel.fromMap(json.decode(source));
}
