import 'package:flutter/material.dart';
import 'package:supermarket_admin_fe/core/themes/app_assets.dart';
import 'package:supermarket_admin_fe/core/themes/app_colors.dart';

Widget personalDetailsTile(height, width) {
  return Container(
    width: width * width,
    height: height * 0.12,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: AppColors.white,
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 14,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "John Doe",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
              Text(
                "johndoe12@gmail.com",
                style: TextStyle(
                  color: AppColors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                ),
              ),
              Text(
                "9292929293",
                style: TextStyle(
                  color: AppColors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                ),
              )
            ],
          ),
          Column(
            children: [
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: '1.8',
                      style: TextStyle(
                        color: AppColors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                      ),
                    ),
                    TextSpan(
                      text: 'KM',
                      style: TextStyle(
                        color: AppColors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.005),
              Container(
                height: height * 0.04,
                width: width * 0.23,
                decoration: BoxDecoration(
                  color: AppColors.brown,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: const Center(
                  child: Text(
                    "Assign",
                    style: TextStyle(
                      color: AppColors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    ),
  );
}

Widget paymentInformation(height, width) {
  return Container(
    width: width * width,
    height: height * 0.13,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: AppColors.white,
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 12,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Payment Information",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Payment Method",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
              Text(
                "Credit Card",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Payment Status",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
              Row(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(AppAssets.starIcon),
                      Image.asset(AppAssets.tickImg),
                    ],
                  ),
                  SizedBox(width: width * 0.01),
                  const Text(
                    "Paid",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    ),
  );
}
