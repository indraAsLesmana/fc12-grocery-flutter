import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/components/spaces.dart';
import '../bloc/history_order/history_order_bloc.dart';
import '../widgets/order_card.dart';

class HistoryOrderPage extends StatefulWidget {
  const HistoryOrderPage({super.key});

  @override
  State<HistoryOrderPage> createState() => _HistoryOrderPageState();
}

class _HistoryOrderPageState extends State<HistoryOrderPage> {
  @override
  void initState() {
    context
        .read<HistoryOrderBloc>()
        .add(const HistoryOrderEvent.getHistoryOrder());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pesanan'),
      ),
      body: BlocBuilder<HistoryOrderBloc, HistoryOrderState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () {
              return const Center(
                child: Text('No Data'),
              );
            },
            loaded: (transactions) {
              if (transactions.orders!.isEmpty) {
                return const Center(
                  child: Text('No Data'),
                );
              }
              return ListView.separated(
                padding: const EdgeInsets.all(16.0),
                separatorBuilder: (context, index) => const SpaceHeight(16.0),
                itemCount: transactions.orders!.length,
                itemBuilder: (context, index) => OrderCard(
                  data: transactions.orders![index],
                ),
              );
            },
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
          );
          // return ListView.separated(
          //   padding: const EdgeInsets.all(16.0),
          //   separatorBuilder: (context, index) => const SpaceHeight(16.0),
          //   itemCount: transactions.length,
          //   itemBuilder: (context, index) => OrderCard(
          //     data: transactions[index],
          //   ),
          // );
        },
      ),
    );
  }
}
