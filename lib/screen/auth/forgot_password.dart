import 'package:flutter/material.dart';
import 'package:testing_agritech/components/custom_button.dart';
import 'package:testing_agritech/components/custom_textfield.dart';
import 'package:testing_agritech/utils/constants/app_colors.dart';
import 'package:testing_agritech/utils/constants/assets_contants.dart';
import '../../components/custom_text.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(height: 50),
                const CustomText(
                  "Forgot Password",
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryColor,
                  textAlign: TextAlign.center,
                ),
                Image.asset(
                  AssetContants.logo,
                  width: 330,
                  height: 250,
                ),
                const SizedBox(
                  height: 100,
                ),
                const CustomText(
                  "Please, enter your email address. You will receive a link to create a new password via email.",
                  fontSize: 14,
                ),
                const SizedBox(height: 16),
                const CustomTextField(
                  hintText: "Email",
                ),
                const SizedBox(height: 53),
                CustomButton(
                  text: "Send",
                  onTap: () {},
                ),
                const SizedBox(height: 23),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
