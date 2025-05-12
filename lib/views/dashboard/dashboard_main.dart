import 'package:flutter/material.dart';
import 'package:supermarket_admin_fe/core/themes/app_assets.dart';
import 'package:supermarket_admin_fe/core/themes/app_colors.dart';

class DashboardMain extends StatelessWidget {
  const DashboardMain({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
      backgroundColor: AppColors.softGreenOverlay,
      // appBar: AppBar(
      //   backgroundColor: AppColors.softGreenOverlay,
      //   elevation: 0,
      //   toolbarHeight: 150,
      //   title: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: [
      //           Image.asset(AppAssets.dashboardProfPic),
      //           Container(
      //             height: height * 0.1,
      //             width: width * 0.09,
      //             decoration: const BoxDecoration(
      //               color: AppColors.white,
      //               shape: BoxShape.circle,
      //             ),
      //             child: Image.asset(AppAssets.dashboardNotification),
      //           ),
      //         ],
      //       ),
      //       Row(
      //         children: [
      //           Expanded(
      //             child: Container(
      //               padding: const EdgeInsets.symmetric(horizontal: 8),
      //               decoration: BoxDecoration(
      //                 color: Colors.white,
      //                 borderRadius: BorderRadius.circular(50),
      //               ),
      //               child: const TextField(
      //                 decoration: InputDecoration(
      //                   hintText: 'Search',
      //                   prefixIcon: Icon(Icons.search),
      //                   border: InputBorder.none,
      //                 ),
      //               ),
      //             ),
      //           ),
      //           const SizedBox(width: 10),
      //           Container(
      //             height: height * 0.1,
      //             width: width * 0.09,
      //             decoration: const BoxDecoration(
      //               color: AppColors.white,
      //               shape: BoxShape.circle,
      //             ),
      //             child: Image.asset(AppAssets.dashboardCal),
      //           ),
      //         ],
      //       ),
      //     ],
      //   ),
      // ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            SizedBox(height: height * 0.08),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(AppAssets.dashboardProfPic),
                Container(
                  height: height * 0.1,
                  width: width * 0.09,
                  decoration: const BoxDecoration(
                    color: AppColors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(AppAssets.dashboardNotification),
                ),
              ],
            ),
            Row(
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
            Container(
              height: height * 0.3,
              width: width * width,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(15),
              ),
            )
          ],
        ),
      ),
    );
  }
}
