class AddressModel {
  final String country;
  final String firstName;
  final String lastName;
  final String address;
  final String city;
  final String province;
  final int zipCode;
  final String phoneNumber;
  final bool isPrimary;

  AddressModel({
    required this.country,
    required this.firstName,
    required this.lastName,
    required this.address,
    required this.city,
    required this.province,
    required this.zipCode,
    required this.phoneNumber,
    this.isPrimary = false,
  });

  String get fullName => '$firstName $lastName';
  String get fullAddress =>
      '$address. $city. $province. $country. Zip Code $zipCode';
  String get primaryAddressText => isPrimary ? 'Utama' : 'Opsi';

  // create fromMap
  factory AddressModel.fromMap(Map<String, dynamic> json) {
    return AddressModel(
      country: json['country'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      address: json['address'],
      city: json['city'],
      province: json['province'],
      zipCode: json['zip_code'],
      phoneNumber: json['phone_number'],
      isPrimary: json['is_primary'] ?? false,
    );
  }
}
