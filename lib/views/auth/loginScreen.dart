import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:supermarket_admin_fe/core/themes/app_assets.dart';
import 'package:supermarket_admin_fe/core/themes/app_colors.dart';
import 'package:supermarket_admin_fe/core/utils/navigations.dart';
import 'package:supermarket_admin_fe/views/auth/signup.dart';
import 'package:supermarket_admin_fe/views/bottom/bottompage_main.dart';
import 'package:supermarket_admin_fe/widgets/buttons.dart/custom_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Logo and Header
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 250),
              child: Image.asset(
                AppAssets.pokakLogo,
                width: 120,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 25),
              child: Text(
                "Welcome\nBack",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 18),
              child: Text(
                "Your AI-powered shopping\nexperience starts here.",
                style: TextStyle(fontSize: 14, color: Colors.grey.shade700),
              ),
            ),

            Center(
              child: Image.asset(
                AppAssets.authImg1,
                height: 200,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ),

            // Form Box
            Container(
              height: 300,
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                border: Border(
                  top: BorderSide(color: AppColors.primaryColor),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 15),
                  TextField(
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    decoration: InputDecoration(
                      hintText: "Enter your Number",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                          color: AppColors.primaryColor,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                          color: AppColors.primaryColor,
                          width: 1.5,
                        ),
                      ),
                      filled: true,
                      fillColor: AppColors.white,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  CustomButton(
                    text: "Login",
                    onPressed: () {
                      pushAndRemoveUntilFun(context, const MainScreen());
                    },
                    buttonColor: AppColors.green,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account?"),
                      GestureDetector(
                        onTap: () {
                          pushNavigation(context, const Signup());
                        },
                        child: const Text(
                          " Sign",
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
