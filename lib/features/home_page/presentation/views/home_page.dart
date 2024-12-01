import 'package:dream_jop/core/widgets/custom_bottom_bar.dart';
import 'package:dream_jop/features/home_page/presentation/views/widgets/home_page_body.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'Home page';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: const HomePageBody(),
      bottomNavigationBar: CustomBottomNavbar(
        pageName: HomePage.id,
      ),
    ));
  }
}


