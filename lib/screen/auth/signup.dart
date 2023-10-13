import 'package:flutter/material.dart';
import 'package:testing_agritech/components/custom_button.dart';
import 'package:testing_agritech/components/custom_textfield.dart';
import 'package:testing_agritech/screen/auth/login.dart';
import 'package:testing_agritech/utils/constants/app_colors.dart';
import 'package:testing_agritech/utils/constants/assets_contants.dart';
import '../../components/custom_text.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                  "SignUp",
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
                  height: 20,
                ),
                const CustomTextField(
                  hintText: "Name",
                ),
                const SizedBox(height: 8),
                const CustomTextField(
                  hintText: "Email",
                ),
                const SizedBox(height: 8),
                const CustomTextField(
                  hintText: "Password",
                  isObscure: true,
                ),
                const SizedBox(height: 16),
                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Login()),
                    ),
                    child: const CustomText(
                      "Already have an account?",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                CustomButton(
                  text: "SignUp",
                  onTap: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
