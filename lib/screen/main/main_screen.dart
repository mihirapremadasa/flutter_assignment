import 'package:flutter/material.dart';
import 'package:testing_agritech/screen/main/registration.dart';
import 'package:testing_agritech/utils/constants/app_colors.dart';
import 'package:testing_agritech/utils/util_functions.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('A - Park'),
        backgroundColor: AppColors.primaryColor,
        elevation: 8,
        leading: const Icon(Icons.menu),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('Premadasa T.W.M.P'),
              accountEmail: Text('ms23468474@my.sliit.lk'),
            ),
            ListTile(
              title: const Text('Farmer Registration'),
              onTap: () {
                UtilFunctions.navigateTo(context, const Registration());
              },
              leading: const Icon(Icons.app_registration),
            ),
            ListTile(
              title: const Text('Contact Us'),
              onTap: () {},
              leading: const Icon(Icons.phone),
            ),
            ListTile(
              title: const Text('Log out'),
              onTap: () {},
              leading: const Icon(Icons.logout),
            ),
          ],
        ),
      ),
    );
  }
}
