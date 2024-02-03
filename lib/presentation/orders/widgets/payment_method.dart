import 'package:flutter/material.dart';

import '../../../core/components/spaces.dart';
import '../../../core/core.dart';
import '../models/bank_account_model.dart';

class PaymentMethod extends StatelessWidget {
  final bool isActive;
  final BankAccountModel data;
  final VoidCallback onTap;

  const PaymentMethod({
    super.key,
    required this.isActive,
    required this.data,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(24.0),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          border: Border.all(color: AppColors.stroke),
        ),
        child: Row(
          children: [
            Image.asset(
              data.image,
              height: 30.0,
            ),
            const SpaceWidth(8.0),
            Flexible(
              child: Text(
                data.name,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const Spacer(),
            Icon(
              isActive ? Icons.circle : Icons.circle_outlined,
              color: isActive ? AppColors.primary : AppColors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
