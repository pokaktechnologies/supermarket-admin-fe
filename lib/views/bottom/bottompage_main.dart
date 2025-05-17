import 'package:flutter/material.dart';
import 'package:supermarket_admin_fe/views/bottom/bottom_bar.dart';
import 'package:supermarket_admin_fe/views/dashboard/dashboard_main.dart';
import 'package:supermarket_admin_fe/views/demo/menu.dart';
import 'package:supermarket_admin_fe/views/demo/promotion.dart';
import 'package:supermarket_admin_fe/views/order/order_main_page.dart';
import 'package:supermarket_admin_fe/views/product/category/category.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;

  final List<Widget> _pages = const [
    DashboardMain(),
    CategoryMain(),
    TestingPromotionPage(),
    OrderMainPage(),
    TestingMenuPage(),
  ];

  void _onBottomBarTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: selectedIndex, children: _pages),
      bottomNavigationBar: BottomBar(
        selectedIndex: selectedIndex,
        onItemSelected: _onBottomBarTap,
      ),
    );
  }
}
