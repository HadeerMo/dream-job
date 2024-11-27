import 'package:dream_jop/core/widgets/custom_appbar.dart';
import 'package:dream_jop/features/home_page/presentation/views/widgets/jobs_list.dart';
import 'package:dream_jop/features/user_info/presentation/views/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppbar(),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 23),
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
