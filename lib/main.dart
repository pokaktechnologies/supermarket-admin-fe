import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:supermarket_admin_fe/app.dart';
import 'package:supermarket_admin_fe/core/utils/providers.dart';

void main() {
  runApp(
    MultiProvider(
      providers: providers,
      child: const MyApp(),
    ),
  );
}
