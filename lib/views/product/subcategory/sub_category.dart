import 'package:flutter/material.dart';
import 'package:supermarket_admin_fe/core/themes/app_assets.dart';
import 'package:supermarket_admin_fe/core/themes/app_colors.dart';
import 'package:supermarket_admin_fe/core/utils/navigations.dart';
import 'package:supermarket_admin_fe/views/product/product_tile.dart';
import 'package:supermarket_admin_fe/views/product/subcategory/add_subcategory_sheet.dart';
import 'package:supermarket_admin_fe/views/product/subcategory/top_brands.dart';

class SubCategory extends StatelessWidget {
  final String selectedTitle;
  const SubCategory({super.key, required this.selectedTitle});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    return Scaffold(
      backgroundColor: AppColors.bgGrey,
      appBar: AppBar(
        backgroundColor: const Color(0xFF27AE60),
        toolbarHeight: 70,
        title: Text(
          selectedTitle,
          style: const TextStyle(
            color: AppColors.white,
            fontWeight: FontWeight.w500,
            fontSize: 17,
          ),
        ),
        leading: InkWell(
          onTap: () => popNavigation(context),
          child: Image.asset(AppAssets.backArrow),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: AppColors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    // pushNavigation(
                    //   context,
                    //   const SubCategory(selectedTitle: "Groceries& Kitchen"),
                    // );
                  },
                  child: const ProductTile(
                    text: "Fresh Produce",
                    image: AppAssets.freshProduceImg,
                    isEllipsed: false,
                  ),
                ),
                InkWell(
                  onTap: () {
                    // pushNavigation(
                    //   context,
                    //   const SubCategory(
                    //       selectedTitle: "Personal Care & Hygiene"),
                    // );
                  },
                  child: const ProductTile(
                    text: "Dairy & Eggs",
                    image: AppAssets.dairyAndEggImg,
                    isEllipsed: false,
                  ),
                ),
                InkWell(
                  onTap: () {
                    // pushNavigation(
                    //   context,
                    //   const SubCategory(selectedTitle: "Baby & Kids"),
                    // );
                  },
                  child: const ProductTile(
                    text: "Meat & Seafood",
                    image: AppAssets.meatImg,
                    isEllipsed: false,
                  ),
                ),
                InkWell(
                  onTap: () {
                    // pushNavigation(
                    //   context,
                    //   const SubCategory(selectedTitle: "Household Essentials"),
                    // );
                  },
                  child: const ProductTile(
                    text: "Frozen Foods",
                    image: AppAssets.forzenFoodImg,
                    isEllipsed: false,
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.015),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    // pushNavigation(
                    //   context,
                    //   const SubCategory(selectedTitle: "Groceries& Kitchen"),
                    // );
                  },
                  child: const ProductTile(
                    text: "Pantry Staples",
                    image: AppAssets.pantryImg,
                    isEllipsed: false,
                  ),
                ),
                InkWell(
                  onTap: () {
                    // pushNavigation(
                    //   context,
                    //   const SubCategory(
                    //       selectedTitle: "Personal Care & Hygiene"),
                    // );
                  },
                  child: const ProductTile(
                    text: "Snacks & Sweets",
                    image: AppAssets.snacksAndSweetsImg,
                    isEllipsed: false,
                  ),
                ),
                InkWell(
                  onTap: () {
                    // pushNavigation(
                    //   context,
                    //   const SubCategory(selectedTitle: "Baby & Kids"),
                    // );
                  },
                  child: const ProductTile(
                    text: "Beverages",
                    image: AppAssets.beverageImg,
                    isEllipsed: false,
                  ),
                ),
                InkWell(
                  onTap: () {
                    // pushNavigation(
                    //   context,
                    //   const SubCategory(selectedTitle: "Household Essentials"),
                    // );
                  },
                  child: const ProductTile(
                    text: "Breakfast Foods",
                    image: AppAssets.breakfastFoodImg,
                    isEllipsed: false,
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.015),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    // pushNavigation(
                    //   context,
                    //   const SubCategory(selectedTitle: "Groceries& Kitchen"),
                    // );
                  },
                  child: const ProductTile(
                    text: "Cookware",
                    image: AppAssets.cookwareImg,
                    isEllipsed: false,
                  ),
                ),
                InkWell(
                  onTap: () {
                    // pushNavigation(
                    //   context,
                    //   const SubCategory(
                    //       selectedTitle: "Personal Care & Hygiene"),
                    // );
                  },
                  child: const ProductTile(
                    text: "Cutlery",
                    image: AppAssets.cutleryImg,
                    isEllipsed: false,
                  ),
                ),
                InkWell(
                  onTap: () {
                    // pushNavigation(
                    //   context,
                    //   const SubCategory(selectedTitle: "Baby & Kids"),
                    // );
                  },
                  child: const ProductTile(
                    text: "Small Appliances",
                    image: AppAssets.smallAppliancesImg,
                    isEllipsed: false,
                  ),
                ),
                InkWell(
                  onTap: () {
                    // pushNavigation(
                    //   context,
                    //   const SubCategory(selectedTitle: "Household Essentials"),
                    // );
                  },
                  child: const ProductTile(
                    text: "Food Storage",
                    image: AppAssets.foodStorageImg,
                    isEllipsed: false,
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.015),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    // pushNavigation(
                    //   context,
                    //   const SubCategory(selectedTitle: "Groceries& Kitchen"),
                    // );
                  },
                  child: const ProductTile(
                    text: "Tableware",
                    image: AppAssets.tablewareImg,
                    isEllipsed: false,
                  ),
                ),
                InkWell(
                  onTap: () {
                    // pushNavigation(
                    //   context,
                    //   const SubCategory(
                    //       selectedTitle: "Personal Care & Hygiene"),
                    // );
                  },
                  child: const ProductTile(
                    text: "Kitchen Tools",
                    image: AppAssets.kitchenToolsImg,
                    isEllipsed: false,
                  ),
                ),
                InkWell(
                  onTap: () {
                    // pushNavigation(
                    //   context,
                    //   const SubCategory(selectedTitle: "Baby & Kids"),
                    // );
                  },
                  child: const ProductTile(
                    text: "Cleaning Supplies",
                    image: AppAssets.cleaningSuppliesImg,
                    isEllipsed: false,
                  ),
                ),
                InkWell(
                  onTap: () {
                    // pushNavigation(
                    //   context,
                    //   const SubCategory(selectedTitle: "Household Essentials"),
                    // );
                  },
                  child: const ProductTile(
                    text: "Specialty Items",
                    image: AppAssets.specialityItems,
                    isEllipsed: false,
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.02),
            const TopBrands()
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () => addSubCategorySheet(context),
        elevation: 6.0,
        shape: const CircleBorder(),
        backgroundColor: AppColors.brown,
        foregroundColor: AppColors.white,
        child: const Icon(Icons.add, size: 23),
      ),
    );
  }
}
