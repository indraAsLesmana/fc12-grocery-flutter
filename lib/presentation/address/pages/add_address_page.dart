import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fic12_grocery_app/core/components/custom_dropdown.dart';
import 'package:flutter_fic12_grocery_app/core/components/custom_text_field.dart';
import 'package:flutter_fic12_grocery_app/data/models/address_model/address_request_model.dart';
import 'package:flutter_fic12_grocery_app/data/models/location_model/city_response_model.dart';
import 'package:flutter_fic12_grocery_app/data/models/location_model/province_response_model.dart';
import 'package:flutter_fic12_grocery_app/data/models/location_model/subdistrict_response_model.dart';
import 'package:flutter_fic12_grocery_app/presentation/address/bloc/add_address/add_address_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../core/components/buttons.dart';
import '../../../core/components/spaces.dart';
import '../../../core/router/app_router.dart';
import '../bloc/address/address_bloc.dart';
import '../bloc/city/city_bloc.dart';
import '../bloc/province/province_bloc.dart';
import '../bloc/subdistrict/subdistrict_bloc.dart';

class AddAddressPage extends StatefulWidget {
  const AddAddressPage({super.key});

  @override
  State<AddAddressPage> createState() => _AddAddressPageState();
}

class _AddAddressPageState extends State<AddAddressPage> {
  final firstNameController = TextEditingController();
  final addressController = TextEditingController();
  final zipCodeController = TextEditingController();
  final phoneNumberController = TextEditingController();

  Province selectedProvince = Province(
    provinceId: '',
    province: '',
  );

  City selectedCity = City(
    cityId: '',
  );

  Subdistrict selectedSubDistrict = Subdistrict(
    subdistrictId: '',
  );

  @override
  void initState() {
    context.read<ProvinceBloc>().add(const ProvinceEvent.getProvinces());
    super.initState();
  }

  // initState() {
  //   super.initState();
  //
  // }
  @override
  Widget build(BuildContext context) {
    // final countryNotifier = ValueNotifier(country.first);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Adress'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          CustomTextField(
            controller: firstNameController,
            label: 'Nama',
          ),
          const SpaceHeight(24.0),
          CustomTextField(
            controller: addressController,
            label: 'Alamat Lengkap',
          ),
          const SpaceHeight(24.0),
          BlocBuilder<ProvinceBloc, ProvinceState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
                loaded: (provinces) {
                  selectedProvince = provinces.first;
                  return CustomDropdown<Province>(
                    value: selectedProvince,
                    items: provinces,
                    label: 'Provinsi',
                    onChanged: (value) {
                      setState(() {
                        selectedProvince = value!;
                        context.read<CityBloc>().add(
                              CityEvent.getCitiesByProvince(
                                selectedProvince.provinceId!,
                              ),
                            );
                      });
                    },
                  );
                },
              );
            },
          ),
          const SpaceHeight(24.0),
          BlocBuilder<CityBloc, CityState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () {
                  return CustomDropdown(
                    value: '-',
                    items: const ['-'],
                    label: 'Kota/Kabupaten',
                    onChanged: (value) {},
                  );
                },
                loading: () {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
                loaded: (cities) {
                  selectedCity = cities.first;
                  return CustomDropdown<City>(
                    value: selectedCity,
                    items: cities,
                    label: 'Kota/Kabupaten',
                    onChanged: (value) {
                      setState(() {
                        selectedCity = value!;
                        context.read<SubdistrictBloc>().add(
                              SubdistrictEvent.getSubdistrictsByCity(
                                selectedCity.cityId!,
                              ),
                            );
                      });
                    },
                  );
                },
              );
            },
          ),
          const SpaceHeight(24.0),
          BlocBuilder<SubdistrictBloc, SubdistrictState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () {
                  return CustomDropdown(
                    value: '-',
                    items: const ['-'],
                    label: 'Kecamatan',
                    onChanged: (value) {},
                  );
                },
                loading: () {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
                loaded: (subdistricts) {
                  selectedSubDistrict = subdistricts.first;
                  return CustomDropdown<Subdistrict>(
                    value: selectedSubDistrict,
                    items: subdistricts,
                    label: 'Kecamatan',
                    onChanged: (value) {
                      setState(() {
                        selectedSubDistrict = value!;
                      });
                    },
                  );
                },
              );
            },
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
          BlocConsumer<AddAddressBloc, AddAddressState>(
            listener: (context, state) {
              state.maybeWhen(
                orElse: () {},
                loaded: () {
                  context.goNamed(
                    RouteConstants.address,
                    pathParameters: PathParameters(
                      rootTab: RootTab.order,
                    ).toMap(),
                  );
                },
              );
            },
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () {
                  return Button.filled(
                    onPressed: () {
                      context.read<AddAddressBloc>().add(
                            AddAddressEvent.addAddress(
                              addressRequestModel: AddressRequestModel(
                                name: firstNameController.text,
                                fullAddress: addressController.text,
                                provId: selectedProvince.provinceId!,
                                cityId: selectedCity.cityId!,
                                districtId: selectedSubDistrict.subdistrictId!,
                                postalCode: zipCodeController.text,
                                phone: phoneNumberController.text,
                                isDefault: 0,
                              ),
                            ),
                          );
                    },
                    label: 'Tambah Alamat',
                  );
                },
                loading: () {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
