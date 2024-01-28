import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


import '../../../core/components/buttons.dart';
import '../../../core/components/custom_dropdown.dart';
import '../../../core/components/custom_text_field.dart';
import '../../../core/components/spaces.dart';
import '../models/address_model.dart';

class EditAddressPage extends StatelessWidget {
  final AddressModel data;
  const EditAddressPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final country = ['Indonesia', 'Inggris', 'Spanyol'];
    final countryNotifier = ValueNotifier(
        country.where((element) => element == data.country).first);
    final firstNameController = TextEditingController(text: data.firstName);
    final lastNameController = TextEditingController(text: data.lastName);
    final addressController = TextEditingController(text: data.address);
    final cityController = TextEditingController(text: data.city);
    final provinceController = TextEditingController(text: data.province);
    final zipCodeController = TextEditingController(text: '${data.zipCode}');
    final phoneNumberController = TextEditingController(text: data.phoneNumber);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Adress'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          ValueListenableBuilder(
            valueListenable: countryNotifier,
            builder: (context, value, _) => CustomDropdown(
              value: value,
              items: country,
              label: 'Negara atau wilayah',
              onChanged: (value) => countryNotifier.value = value ?? '',
            ),
          ),
          const SpaceHeight(24.0),
          CustomTextField(
            controller: firstNameController,
            label: 'Nama Depan',
          ),
          const SpaceHeight(24.0),
          CustomTextField(
            controller: lastNameController,
            label: 'Nama Belakang',
          ),
          const SpaceHeight(24.0),
          CustomTextField(
            controller: addressController,
            label: 'Alamat jalan',
          ),
          const SpaceHeight(24.0),
          CustomTextField(
            controller: cityController,
            label: 'Kota',
          ),
          const SpaceHeight(24.0),
          CustomTextField(
            controller: provinceController,
            label: 'Provinsi',
          ),
          const SpaceHeight(24.0),
          CustomTextField(
            controller: zipCodeController,
            label: 'Kode Pos',
          ),
          const SpaceHeight(24.0),
          CustomTextField(
            controller: phoneNumberController,
            label: 'No Handphone',
          ),
          const SpaceHeight(24.0),
          Button.filled(
            onPressed: () {
              context.pop();
            },
            label: 'Perbarui Alamat',
          ),
        ],
      ),
    );
  }
}
