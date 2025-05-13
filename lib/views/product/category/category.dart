import 'package:flutter/material.dart';
import 'package:supermarket_admin_fe/core/themes/app_assets.dart';
import 'package:supermarket_admin_fe/core/themes/app_colors.dart';
import 'package:supermarket_admin_fe/core/utils/navigations.dart';
import 'package:supermarket_admin_fe/views/product/category/add_category_sheet.dart';
import 'package:supermarket_admin_fe/views/product/product_tile.dart';
import 'package:supermarket_admin_fe/views/product/subcategory/sub_category.dart';

class CategoryMain extends StatelessWidget {
  const CategoryMain({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
      backgroundColor: AppColors.bgGrey,
      appBar: AppBar(
        backgroundColor: const Color(0xFF27AE60),
        toolbarHeight: 90,
        title: Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Container(
              height: height * 0.1,
              width: width * 0.09,
              decoration: const BoxDecoration(
                color: AppColors.white,
                shape: BoxShape.circle,
              ),
              child: Image.asset(AppAssets.dashboardCal),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Categories",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    pushNavigation(
                      context,
                      const SubCategory(selectedTitle: "Groceries& Kitchen"),
                    );
                  },
                  child: const ProductTile(
                    text: "Groceries& Kitchen",
                    image: AppAssets.groceryImg,
                    isEllipsed: true,
                  ),
                ),
                InkWell(
                  onTap: () {
                    pushNavigation(
                      context,
                      const SubCategory(
                          selectedTitle: "Personal Care & Hygiene"),
                    );
                  },
                  child: const ProductTile(
                    text: "Personal Care & Hygiene",
                    image: AppAssets.personalCareImg,
                    isEllipsed: true,
                  ),
                ),
                InkWell(
                  onTap: () {
                    pushNavigation(
                      context,
                      const SubCategory(selectedTitle: "Baby & Kids"),
                    );
                  },
                  child: const ProductTile(
                    text: "Baby & Kids",
                    image: AppAssets.babyCareImg,
                    isEllipsed: true,
                  ),
                ),
                InkWell(
                  onTap: () {
                    pushNavigation(
                      context,
                      const SubCategory(selectedTitle: "Household Essentials"),
                    );
                  },
                  child: const ProductTile(
                    text: "Household Essentials",
                    image: AppAssets.houseHoldImg,
                    isEllipsed: true,
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    pushNavigation(
                      context,
                      const SubCategory(selectedTitle: "Pet Care"),
                    );
                  },
                  child: const ProductTile(
                    text: "Pet Care",
                    image: AppAssets.petcareImg,
                    isEllipsed: true,
                  ),
                ),
                InkWell(
                  onTap: () {
                    pushNavigation(
                      context,
                      const SubCategory(selectedTitle: "Healt & Wellness"),
                    );
                  },
                  child: const ProductTile(
                    text: "Healt & Wellness",
                    image: AppAssets.healthImg,
                    isEllipsed: true,
                  ),
                ),
                InkWell(
                  onTap: () {
                    pushNavigation(
                      context,
                      const SubCategory(selectedTitle: "Home & Living"),
                    );
                  },
                  child: const ProductTile(
                    text: "Home & Living",
                    image: AppAssets.homeLivingImg,
                    isEllipsed: true,
                  ),
                ),
                InkWell(
                  onTap: () {
                    pushNavigation(
                      context,
                      const SubCategory(
                          selectedTitle: "Electronics & Accessories"),
                    );
                  },
                  child: const ProductTile(
                    text: "Electronics & Accessories",
                    image: AppAssets.electronicsImg,
                    isEllipsed: true,
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.02),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    pushNavigation(
                      context,
                      const SubCategory(selectedTitle: "Seasonal & Holiday"),
                    );
                  },
                  child: const ProductTile(
                    text: "Seasonal & Holiday",
                    image: AppAssets.seasonalHolidayImg,
                    isEllipsed: true,
                  ),
                ),
                SizedBox(width: width * 0.02),
                InkWell(
                  onTap: () {
                    pushNavigation(
                      context,
                      const SubCategory(selectedTitle: "Office & School"),
                    );
                  },
                  child: const ProductTile(
                    text: "Office & School",
                    image: AppAssets.officeImg,
                    isEllipsed: true,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () => addCategorySheet(context),
        elevation: 6.0,
        shape: const CircleBorder(),
        backgroundColor: AppColors.brown,
        foregroundColor: AppColors.white,
        child: const Icon(Icons.add, size: 23),
      ),
    );
  }
}
