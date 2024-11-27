import 'package:dream_jop/constant.dart';
import 'package:dream_jop/core/utils/functions/truncate_text.dart';
import 'package:dream_jop/core/widgets/custom_appbar.dart';
import 'package:dream_jop/core/widgets/main_title.dart';
import 'package:dream_jop/features/home_page/presentation/views/widgets/card_image.dart';
import 'package:dream_jop/features/home_page/presentation/views/widgets/card_info.dart';
import 'package:dream_jop/features/home_page/presentation/views/widgets/custom_small_text_container.dart';
import 'package:dream_jop/features/home_page/presentation/views/widgets/jobs_list.dart';
import 'package:dream_jop/features/user_info/presentation/views/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppbar(),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextFormField(
                hintText: 'Search',
                suffixIcon: Icon(Icons.search),
              ),
              SizedBox(
                height: 25,
              ),
              JobsList()
            ],
          ),
        )
      ],
    );
  }
}
