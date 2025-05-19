import 'package:flutter/material.dart';
import 'package:supermarket_admin_fe/core/themes/app_assets.dart';
import 'package:supermarket_admin_fe/core/themes/app_colors.dart';
import 'package:supermarket_admin_fe/core/utils/navigations.dart';

class MenuMain extends StatelessWidget {
  const MenuMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgGrey,
      appBar: AppBar(
        backgroundColor: const Color(0xFF27AE60),
        toolbarHeight: 70,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "More",
              style: TextStyle(
                color: AppColors.white,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
            Container(
              height: 45,
              width: 45,
              decoration: const BoxDecoration(
                color: AppColors.white,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Image.asset(
                  AppAssets.notifIcon,
                  height: 25,
                  width: 25,
                  fit: BoxFit.contain,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}




Widget singleMenuItems() {
  return Container();
}