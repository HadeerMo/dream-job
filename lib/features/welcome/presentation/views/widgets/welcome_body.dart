import 'package:dream_jop/features/welcome/presentation/views/widgets/welcome_title.dart';
import 'package:flutter/material.dart';

class WelcomeBody extends StatelessWidget {
  const WelcomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/Images/welcome10.jpg'),
              fit: BoxFit.cover)),
      child: const WelcomeTitle(),
    );
  }
}