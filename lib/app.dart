import 'package:flutter/material.dart';
import 'package:supermarket_admin_fe/views/auth/signup.dart';
import 'package:supermarket_admin_fe/views/product/product_main/add_product.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Super Market',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Signup(),
      // home: const AddProductPage(),
    );
  }
}
