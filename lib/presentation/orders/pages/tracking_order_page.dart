import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fic12_grocery_app/core/router/app_router.dart';
import 'package:flutter_fic12_grocery_app/presentation/orders/bloc/order_detail/order_detail_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../core/components/buttons.dart';
import '../../../core/components/spaces.dart';
import '../widgets/product_tile.dart';

class TrackingOrderPage extends StatefulWidget {
  final int orderId;
  const TrackingOrderPage({
    Key? key,
    required this.orderId,
  }) : super(key: key);

  @override
  State<TrackingOrderPage> createState() => _TrackingOrderPageState();
}

class _TrackingOrderPageState extends State<TrackingOrderPage> {
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      GlobalKey<RefreshIndicatorState>();

  @override
  void initState() {
    context
        .read<OrderDetailBloc>()
        .add(OrderDetailEvent.getOrderDetail(widget.orderId));
    super.initState();
  }

  Future<void> _refresData() async {
    context
        .read<OrderDetailBloc>()
        .add(OrderDetailEvent.getOrderDetail(widget.orderId));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Orders'),
      ),
      body: BlocBuilder<OrderDetailBloc, OrderDetailState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () {
              return const Center(
                child: Text('No Data'),
              );
            },
            loaded: (orderDetail) {
              return RefreshIndicator(
                key: _refreshIndicatorKey,
                onRefresh: _refresData,
                child: ListView(
                  padding: const EdgeInsets.all(20.0),
                  children: [
                    ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: orderDetail.orderItems?.length ?? 0,
                      itemBuilder: (context, index) => ProductTile(
                        data: orderDetail.orderItems![index],
                      ),
                      separatorBuilder: (context, index) =>
                          const SpaceHeight(16.0),
                    ),
                    const SpaceHeight(20.0),
                    // TrackingHorizontal(trackRecords: trackRecords),
                    Button.outlined(
                      onPressed: () {
                        if (orderDetail.shippingResi == null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              backgroundColor: Colors.red,
                              content: Text("Please wait for shipping resi"),
                            ),
                          );
                          return;
                        }
                        context.pushNamed(
                          RouteConstants.shippingDetail,
                          pathParameters: PathParameters().toMap(),
                          extra: orderDetail.shippingResi.toString(),
                        );
                      },
                      label: 'Detail pelacakan pengiriman',
                    ),
                    const SpaceHeight(20.0),
                    const Text(
                      'Info Pengiriman',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    const SpaceHeight(20.0),
                    const Text(
                      'Alamat Pesanan',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      orderDetail.address?.fullAddress ?? "",
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    const SpaceHeight(16.0),
                    const Text(
                      'Penerima',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      orderDetail.address?.name ?? "",
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
