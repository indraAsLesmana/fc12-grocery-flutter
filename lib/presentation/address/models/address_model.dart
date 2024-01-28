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
}
