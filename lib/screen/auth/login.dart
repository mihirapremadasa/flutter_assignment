import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:testing_agritech/components/custom_button.dart';
import 'package:testing_agritech/components/custom_textfield.dart';
import 'package:testing_agritech/screen/auth/forgot_password.dart';
import 'package:testing_agritech/screen/main/main_screen.dart';
import 'package:testing_agritech/utils/constants/app_colors.dart';
import 'package:testing_agritech/utils/constants/assets_contants.dart';
import 'package:testing_agritech/utils/util_functions.dart';
import '../../components/custom_text.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  //Initialialize Firebase App
  // Future<FirebaseApp> _initializeFirebase() async {
  //   Firebase firebaseApp = await Firebase.initializeApp();
  //   return firebaseApp;
  // }

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
                  "Login",
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
                    onTap: () => UtilFunctions.navigateTo(
                        context, const ForgotPassword()),
                    child: const CustomText(
                      "Forgot your password?",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                CustomButton(
                  text: "Login",
                  onTap: () {
                    UtilFunctions.navigateTo(context, const MainScreen());
                  },
                ),
                const SizedBox(height: 23),
                const CustomText(
                  "Or login with social account",
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlutterSocialButton(
                      onTap: () {},
                      buttonType: ButtonType
                          .google, // Button type for different type buttons
                      mini: true,
                    ),
                    const SizedBox(width: 16),
                    FlutterSocialButton(
                      onTap: () {},
                      buttonType: ButtonType
                          .facebook, // Button type for different type buttons
                      mini: true,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
