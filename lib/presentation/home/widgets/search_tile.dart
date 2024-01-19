import 'package:flutter/material.dart';

import '../../../core/components/spaces.dart';
import '../../../core/core.dart';
import '../models/product_model.dart';

class SearchTile extends StatelessWidget {
  final ProductModel data;
  const SearchTile({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          child: Image.asset(
            data.images.first,
            width: 68.0,
            height: 68.0,
          ),
        ),
        const SpaceWidth(14.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              data.name,
              style: const TextStyle(
                fontSize: 16,
              ),
              overflow: TextOverflow.ellipsis,
            ),
            Row(
              children: [
                Text(
                  data.priceFormat,
                  style: const TextStyle(
                    color: AppColors.primary,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
