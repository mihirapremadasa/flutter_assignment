import 'package:flutter/material.dart';
import 'package:testing_agritech/components/custom_button.dart';
import 'package:testing_agritech/components/custom_textfield.dart';
import 'package:testing_agritech/screen/main/current_location_screen.dart';
import 'package:testing_agritech/utils/constants/app_colors.dart';
import 'package:testing_agritech/utils/constants/assets_contants.dart';
import '../../components/custom_text.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
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
                  "Farmer Registration",
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryColor,
                  textAlign: TextAlign.center,
                ),
                Image.asset(
                  AssetContants.logo,
                  width: 250,
                  height: 150,
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomTextField(
                  hintText: "Name",
                ),
                const SizedBox(height: 8),
                const CustomTextField(
                  hintText: "NIC",
                ),
                const SizedBox(height: 8),
                const CustomTextField(
                  hintText: "Soil PH value",
                ),
                const SizedBox(height: 8),
                const CustomTextField(
                  hintText: "Address",
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return const GeolocationApp();
                      }));
                    },
                    child: const Text("User current location")),
                const SizedBox(height: 16),
                CustomButton(
                  text: "Submit",
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
