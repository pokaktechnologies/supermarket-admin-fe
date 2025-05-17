import 'package:flutter/material.dart';
import 'package:supermarket_admin_fe/core/themes/app_assets.dart';
import 'package:supermarket_admin_fe/views/order/single_order_card.dart';

class Delivered extends StatelessWidget {
  const Delivered({super.key});

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
              isDelivered: true,
              paymentStatus: "paid",
              img: AppAssets.paidIcon,
              name: "John Doe",
              isCancelled: false,
            ),
          ),
          SizedBox(height: height * 0.02),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: SingleOrderCard(
              isDelivered: true,
              paymentStatus: "Unpaid",
              img: AppAssets.unpaidIcon,
              name: "John Doe",
              isCancelled: false,
            ),
          ),
          SizedBox(height: height * 0.02),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: SingleOrderCard(
              isDelivered: true,
              paymentStatus: "paid",
              img: AppAssets.paidIcon,
              name: "John Doe",
              isCancelled: false,
            ),
          ),
          SizedBox(height: height * 0.02),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: SingleOrderCard(
              isDelivered: true,
              paymentStatus: "Unpaid",
              img: AppAssets.unpaidIcon,
              name: "John Doe",
              isCancelled: false,
            ),
          ),
          SizedBox(height: height * 0.02),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: SingleOrderCard(
              isDelivered: true,
              paymentStatus: "paid",
              img: AppAssets.paidIcon,
              name: "John Doe",
              isCancelled: false,
            ),
          ),
          SizedBox(height: height * 0.03),
        ],
      ),
    );
  }
}
