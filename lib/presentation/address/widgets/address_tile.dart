import 'package:flutter/material.dart';
import 'package:flutter_fic12_grocery_app/data/models/address_model/address_response_model.dart';

import '../../../core/components/spaces.dart';
import '../../../core/core.dart';
import '../models/address_model.dart';

class AddressTile extends StatelessWidget {
  final bool isSelected;
  final Address data;
  final VoidCallback onTap;
  final VoidCallback onEditTap;

  const AddressTile({
    super.key,
    required this.data,
    this.isSelected = false,
    required this.onTap,
    required this.onEditTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(12.0)),
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: AppColors.black.withOpacity(0.1),
                    blurRadius: 2,
                    offset: const Offset(0, 2),
                    spreadRadius: 0,
                    blurStyle: BlurStyle.outer,
                  ),
                ]
              : null,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SpaceHeight(24.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                '${data.name} - ${data.phone}',
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            const SpaceHeight(4.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      data.fullAddress!,
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SpaceWidth(14.0),
                  Icon(
                    isSelected
                        ? Icons.radio_button_checked
                        : Icons.circle_outlined,
                    color: isSelected ? AppColors.primary : AppColors.grey,
                  ),
                ],
              ),
            ),
            const SpaceHeight(24.0),
            if (isSelected) ...[
              const Divider(color: AppColors.primary),
              Center(
                child: TextButton(
                  onPressed: onEditTap,
                  child: const Text('Edit'),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
