import 'package:dream_jop/features/user_info/presentation/views/select_categories_page.dart';
import 'package:dream_jop/features/welcome/presentation/views/widgets/welcome_body.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, SelectCategoriesPage.id);
          },
          shape: const CircleBorder(),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          child: const Icon(
            Icons.arrow_forward,
          ),
        ),
        body: const WelcomeBody(),
      ),
    );
  }
}
