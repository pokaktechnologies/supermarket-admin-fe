import 'package:flutter/material.dart';
import 'package:supermarket_admin_fe/core/themes/app_assets.dart';
import 'package:supermarket_admin_fe/core/themes/app_colors.dart';

class BottomBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemSelected;

  const BottomBar({
    super.key,
    required this.selectedIndex,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    final List<_BottomBarItemModel> items = [
      _BottomBarItemModel(image: AppAssets.dashboardIcon, text: 'Dashboard'),
      _BottomBarItemModel(image: AppAssets.productIcon, text: 'Products'),
      _BottomBarItemModel(image: AppAssets.promotionIcon, text: 'Promotion'),
      _BottomBarItemModel(image: AppAssets.orderIcon, text: 'Orders'),
      _BottomBarItemModel(image: AppAssets.menuIcon, text: 'Menu'),
    ];

    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: 55,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: AppColors.grey),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              items.length,
              (index) {
                return GestureDetector(
                  onTap: () => onItemSelected(index),
                  child: SingleBottomBarItem(
                    image: items[index].image,
                    text: items[index].text,
                    isSelected: selectedIndex == index,
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class SingleBottomBarItem extends StatelessWidget {
  final String image;
  final String text;
  final bool isSelected;

  const SingleBottomBarItem({
    super.key,
    required this.image,
    required this.text,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: 50,
      child: Column(
        children: [
          Image.asset(
            image,
            width: 20,
            height: 20,
            color: isSelected ? AppColors.primaryColor : Colors.black,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 9,
              color: isSelected ? AppColors.primaryColor : Colors.black,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}

class _BottomBarItemModel {
  final String image;
  final String text;

  _BottomBarItemModel({required this.image, required this.text});
}
