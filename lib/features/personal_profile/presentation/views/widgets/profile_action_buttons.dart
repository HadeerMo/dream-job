import 'package:dream_jop/features/personal_profile/presentation/views/widgets/custom_profile_button.dart';
import 'package:flutter/material.dart';

class ProfileActionButtons extends StatelessWidget {
  const ProfileActionButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        CustomProfileButton(
          title: 'Edit profile',
        ),
        CustomProfileButton(
          title: 'Upload projects',
        )
      ],
    );
  }
}