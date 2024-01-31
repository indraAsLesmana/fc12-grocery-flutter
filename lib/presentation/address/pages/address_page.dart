import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../core/components/buttons.dart';
import '../../../core/components/spaces.dart';
import '../../../core/core.dart';
import '../../../core/router/app_router.dart';
import '../bloc/address/address_bloc.dart';
import '../models/address_model.dart';
import '../widgets/address_tile.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({super.key});

  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      GlobalKey<RefreshIndicatorState>();
  int? selectedIndex;

  @override
  void initState() {
    super.initState();
    context.read<AddressBloc>().add(const AddressEvent.getAddresses());
  }

  Future<void> _refreshAddresses() async {
    context.read<AddressBloc>().add(const AddressEvent.getAddresses());
  }

  @override
  Widget build(BuildContext context) {
    // int selectedIndex = addresses.indexWhere((element) => element.isPrimary);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Address'),
        actions: [
          IconButton(
            onPressed: () {
              context.goNamed(
                RouteConstants.cart,
                pathParameters: PathParameters(
                  rootTab: RootTab.order,
                ).toMap(),
              );
            },
            icon: Assets.icons.cart.svg(height: 24.0),
          ),
        ],
      ),
      body: RefreshIndicator(
        key: _refreshIndicatorKey,
        onRefresh: _refreshAddresses,
        child: ListView(
          padding: const EdgeInsets.all(20.0),
          children: [
            const Text(
              'Pilih atau tambahkan alamat pengiriman',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SpaceHeight(20.0),
            BlocBuilder<AddressBloc, AddressState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                  loaded: (addresses) {
                    return ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: addresses.length,
                      itemBuilder: (context, index) => AddressTile(
                        isSelected: selectedIndex != null
                            ? selectedIndex == index
                            : addresses[index].isDefault == 1,
                        data: addresses[index],
                        onTap: () {
                          selectedIndex = index;
                          setState(() {});
                        },
                        onEditTap: () {
                          context.goNamed(
                            RouteConstants.editAddress,
                            pathParameters: PathParameters(
                              rootTab: RootTab.order,
                            ).toMap(),
                            extra: addresses[index].toMapAddressModel(),
                          );
                        },
                      ),
                      separatorBuilder: (context, index) =>
                          const SpaceHeight(16.0),
                    );
                  },
                );
              },
            ),
            const SpaceHeight(40.0),
            Button.outlined(
              onPressed: () {
                context.goNamed(
                  RouteConstants.addAddress,
                  pathParameters: PathParameters(
                    rootTab: RootTab.order,
                  ).toMap(),
                );
              },
              label: 'Add address',
            ),
            const SpaceHeight(50.0),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Subtotal (Estimasi)',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                Text(
                  20000.currencyFormatRp,
                  style: const TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
            const SpaceHeight(12.0),
            Button.filled(
              onPressed: () {
                context.goNamed(
                  RouteConstants.orderDetail,
                  pathParameters: PathParameters(
                    rootTab: RootTab.order,
                  ).toMap(),
                );
              },
              label: 'Lanjutkan',
            ),
          ],
        ),
      ),
    );
  }
}
