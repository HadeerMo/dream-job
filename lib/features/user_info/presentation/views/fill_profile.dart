import 'package:dream_jop/features/user_info/presentation/views/widgets/fill_profile_body.dart';
import 'package:flutter/material.dart';

class FillProfile extends StatelessWidget {
  const FillProfile({super.key});
  static String id = 'Fill Profile';
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: FillProfileBody(),
      ),
    );
  }
}
