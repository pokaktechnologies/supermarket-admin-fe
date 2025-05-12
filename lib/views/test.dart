import 'package:flutter/material.dart';

class TestingMainPage extends StatelessWidget {
  const TestingMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          color: Colors.red,
        ),
      ),
    );
  }
}
