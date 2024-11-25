import 'package:dream_jop/constant.dart';
import 'package:dream_jop/core/widgets/custom_appbar.dart';
import 'package:dream_jop/features/user_info/presentation/views/widgets/custom_upload_image_input.dart';
import 'package:flutter/material.dart';

class FillProfileBody extends StatelessWidget {
  const FillProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppbar(),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Fill out your profile',
          style: TextStyle(
            color: mainColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 25, 
        ),
        const UploadImageField(),
        const SizedBox(
          height: 20,
        ),
        TextFormField()
      ],
    );
  }
}
