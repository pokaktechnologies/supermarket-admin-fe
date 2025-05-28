import 'package:flutter/material.dart';
import 'package:supermarket_admin_fe/core/themes/app_assets.dart';
import 'package:supermarket_admin_fe/core/themes/app_colors.dart';
import 'package:supermarket_admin_fe/core/utils/navigations.dart';

class AddPromotions extends StatelessWidget {
  const AddPromotions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgGrey,
      appBar: AppBar(
        backgroundColor: const Color(0xFF27AE60),
        toolbarHeight: 70,
        title: const Text(
          "Operations",
          style: TextStyle(
            color: AppColors.white,
            fontWeight: FontWeight.w500,
            fontSize: 17,
          ),
        ),
        leading: InkWell(
          onTap: () => popNavigation(context),
          child: Image.asset(AppAssets.backArrow),
        ),
      ),
    );
  }
}
