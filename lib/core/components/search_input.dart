import 'package:flutter/material.dart';

import '../constants/colors.dart';

class SearchInput extends StatelessWidget {
  final TextEditingController controller;
  final Function(String value)? onChanged;
  final VoidCallback? onTap;

  const SearchInput({
    super.key,
    required this.controller,
    this.onChanged,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: TextFormField(
        onTap: onTap,
        readOnly: onTap != null,
        controller: controller,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: 'Cari Produk di sini',
          suffixIcon: const Icon(Icons.search),
          contentPadding: const EdgeInsets.all(16.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: AppColors.light),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: AppColors.light),
          ),
        ),
      ),
    );
  }
}
