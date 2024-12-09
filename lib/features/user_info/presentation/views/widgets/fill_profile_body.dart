import 'package:dream_jop/constant.dart';
import 'package:dream_jop/core/widgets/custom_appbar.dart';
import 'package:dream_jop/core/widgets/custom_button.dart';
import 'package:dream_jop/features/home_page/presentation/views/home_page.dart';
import 'package:dream_jop/core/widgets/custom_text_form_field.dart';
import 'package:dream_jop/features/user_info/presentation/views/widgets/custom_upload_image_input.dart';
import 'package:dream_jop/core/widgets/upload_cv.dart';
import 'package:flutter/material.dart';

class FillProfileBody extends StatelessWidget {
  const FillProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey();
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
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
            height: 23,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Form(
              key: formKey,
              child: ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  const CustomTextFormField(
                    hintText: 'Name',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const CustomTextFormField(
                    hintText: 'Age',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const CustomTextFormField(
                    hintText: 'Location',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const CustomTextFormField(
                    hintText: 'Email',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const CustomTextFormField(
                    hintText: 'Phone number',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const UploadCV(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: CustomButton(
                      text: 'Save changes',
                      width: double.infinity,
                      height: 50,
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          //Save user Info (on firebase)
                          Navigator.of(context).pushNamed(HomePage.id);
                        }
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
