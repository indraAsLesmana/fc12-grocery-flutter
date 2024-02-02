import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fic12_grocery_app/data/models/product_quantity_model/product_quantity.dart';
import 'package:flutter_fic12_grocery_app/data/models/product_response_model/product.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../../core/components/spaces.dart';
import '../../../core/core.dart';
import '../../home/bloc/checkout/checkout_bloc.dart';

class CartTile extends StatelessWidget {
  final ProductQuantity data;
  const CartTile({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      child: Slidable(
        endActionPane: ActionPane(
          extentRatio: 0.25,
          motion: const StretchMotion(),
          children: [
            SlidableAction(
              onPressed: (context) {
                if (data.product case var product?) {
                  context
                      .read<CheckoutBloc>()
                      .add(CheckoutEvent.removeOrder(product));
                }
              },
              backgroundColor: AppColors.primary.withOpacity(0.44),
              foregroundColor: AppColors.red,
              icon: Icons.delete_outlined,
              borderRadius: const BorderRadius.horizontal(
                right: Radius.circular(10.0),
              ),
            ),
          ],
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 10.0),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.stroke),
          ),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                    child: Image.network(
                      data.product?.image!.first ?? "",
                      width: 68.0,
                      height: 68.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SpaceWidth(14.0),
                  Flexible(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data.product?.name ?? "",
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                          overflow: TextOverflow.visible,
                        ),
                        Row(
                          children: [
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Text(
                                ("${data.product?.getPriceAsDouble()?.toInt().currencyFormatRp ?? ""} /kg"),
                                style: const TextStyle(
                                  color: AppColors.primary,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 0,
                              fit: FlexFit.tight,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(5.0)),
                                    child: InkWell(
                                      onTap: () {
                                        final Product? pr = data.product;
                                        if (pr == null) return;
                                        context
                                            .read<CheckoutBloc>()
                                            .add(CheckoutEvent.removeItem(pr));
                                      },
                                      child: const ColoredBox(
                                        color: AppColors.primary,
                                        child: Padding(
                                          padding: EdgeInsets.all(4.0),
                                          child: Icon(
                                            Icons.remove,
                                            color: AppColors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SpaceWidth(4.0),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('${data.quantity}'),
                                  ),
                                  const SpaceWidth(4.0),
                                  ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(5.0)),
                                    child: InkWell(
                                      onTap: () {
                                        final Product? pr = data.product;
                                        if (pr == null) return;
                                        context
                                            .read<CheckoutBloc>()
                                            .add(CheckoutEvent.addItem(pr));
                                      },
                                      child: const ColoredBox(
                                        color: AppColors.primary,
                                        child: Padding(
                                          padding: EdgeInsets.all(4.0),
                                          child: Icon(
                                            Icons.add,
                                            color: AppColors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
