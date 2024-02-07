import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fic12_grocery_app/presentation/orders/bloc/tracking/tracking_bloc.dart';
import 'package:flutter_fic12_grocery_app/presentation/orders/widgets/tracking_vertical.dart';

import '../../../core/components/spaces.dart';
import '../../../core/core.dart';
import '../../home/models/product_model.dart';
import '../../home/models/store_model.dart';
import '../models/track_record_model.dart';
import '../widgets/product_tile.dart';

class ShippingDetailPage extends StatefulWidget {
  final String resi;
  const ShippingDetailPage({
    Key? key,
    required this.resi,
  }) : super(key: key);

  @override
  State<ShippingDetailPage> createState() => _ShippingDetailPageState();
}

class _ShippingDetailPageState extends State<ShippingDetailPage> {
  final List<ProductModel> orders = [
    ProductModel(
      images: [
        Assets.images.products.earphone.path,
        Assets.images.products.earphone.path,
        Assets.images.products.earphone.path,
      ],
      name: 'Earphone',
      price: 320000,
      stock: 20,
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ',
      store: StoreModel(
        name: 'CWB Online Store',
        type: StoreEnum.officialStore,
        imageUrl: 'https://avatars.githubusercontent.com/u/534678?v=4',
      ),
    ),
    ProductModel(
      images: [
        Assets.images.products.sepatu.path,
        Assets.images.products.sepatu2.path,
        Assets.images.products.sepatu.path,
      ],
      name: 'Sepatu Nike',
      price: 2200000,
      stock: 20,
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ',
      store: StoreModel(
        name: 'CWB Online Store',
        type: StoreEnum.officialStore,
        imageUrl: 'https://avatars.githubusercontent.com/u/534678?v=4',
      ),
    ),
  ];
  final List<TrackRecordModel> trackRecords = [
    TrackRecordModel(
      title: 'Pesanan Anda belum dibayar',
      status: TrackRecordStatus.belumBayar,
      updatedAt: DateTime.now().subtract(const Duration(days: 3)),
    ),
    TrackRecordModel(
      title: 'Pesanan Anda sedang disiapkan',
      status: TrackRecordStatus.dikemas,
      updatedAt: DateTime.now().subtract(const Duration(days: 2)),
    ),
    TrackRecordModel(
      title: 'Pesanan Anda dalam pengiriman',
      status: TrackRecordStatus.dikirim,
      updatedAt: DateTime.now().subtract(const Duration(days: 1)),
    ),
    TrackRecordModel(
      title: 'Pesanan Anda telah tiba',
      status: TrackRecordStatus.selesai,
      updatedAt: DateTime.now(),
    ),
  ];

  void copyToClipboard(String text) {
    Clipboard.setData(ClipboardData(text: text)).then((_) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Nomor resi disalin!'),
          duration: Duration(seconds: 1),
          backgroundColor: AppColors.primary,
        ),
      );
    });
  }

  @override
  void initState() {
    context
        .read<TrackingBloc>()
        .add(TrackingEvent.getTracking(widget.resi, 'sicepat'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Pengiriman - ${widget.resi}'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          // ProductTile(
          //   data: orders.first,
          // ),
          const SpaceHeight(36.0),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.stroke),
              borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            ),
            child: BlocBuilder<TrackingBloc, TrackingState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                  loaded: (tracking) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            children: [
                              const Text(
                                'No. Resi',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              const Spacer(),
                              Text(
                                widget.resi,
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: AppColors.grey,
                                ),
                              ),
                              const SpaceWidth(5.0),
                              InkWell(
                                onTap: () => copyToClipboard(widget.resi),
                                child: const Text(
                                  'SALIN',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: AppColors.primary,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Divider(
                          height: 1,
                          color: AppColors.light,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: TrackignVertical(
                              trackRecords:
                                  tracking.rajaongkir?.result?.manifest ?? []),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
