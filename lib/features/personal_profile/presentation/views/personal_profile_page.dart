import 'package:dream_jop/core/widgets/custom_bottom_bar.dart';
import 'package:dream_jop/features/personal_profile/presentation/views/widgets/personal_profile_body.dart';
import 'package:flutter/material.dart';

class PersonalProfilePage extends StatelessWidget {
  const PersonalProfilePage({super.key});
  static String id = 'Personal profile';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: CustomBottomNavbar(pageName: PersonalProfilePage.id,),
      body: PersonalProfileBody(),
    ));
  }
}
