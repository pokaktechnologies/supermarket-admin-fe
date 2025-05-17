import 'package:flutter/material.dart';
import 'package:supermarket_admin_fe/core/themes/app_assets.dart';
import 'package:supermarket_admin_fe/views/order/single_order_card.dart';

class Cancelled extends StatelessWidget {
  const Cancelled({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: height * 0.02),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: SingleOrderCard(
              isDelivered: false,
              paymentStatus: "paid",
              img: AppAssets.paidIcon,
              name: "John Doe",
              isCancelled: true,
            ),
          ),
          SizedBox(height: height * 0.02),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: SingleOrderCard(
              isDelivered: false,
              paymentStatus: "paid",
              img: AppAssets.paidIcon,
              name: "Alan",
              isCancelled: true,
            ),
          ),
          SizedBox(height: height * 0.02),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: SingleOrderCard(
              isDelivered: false,
              paymentStatus: "Unpaid",
              img: AppAssets.unpaidIcon,
              name: "Afiya Afa",
              isCancelled: true,
            ),
          ),
          SizedBox(height: height * 0.02),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: SingleOrderCard(
              isDelivered: false,
              paymentStatus: "paid",
              img: AppAssets.paidIcon,
              name: "Amal Amn",
              isCancelled: true,
            ),
          ),
          SizedBox(height: height * 0.02),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: SingleOrderCard(
              isDelivered: false,
              paymentStatus: "paid",
              img: AppAssets.paidIcon,
              name: "John Doe",
              isCancelled: true,
            ),
          ),
        ],
      ),
    );
  }
}
