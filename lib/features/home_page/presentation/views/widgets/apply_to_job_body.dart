import 'package:dream_jop/core/models/jobs/jobs.dart';
import 'package:dream_jop/core/widgets/custom_appbar.dart';
import 'package:dream_jop/core/widgets/custom_button.dart';
import 'package:dream_jop/core/widgets/custom_text_form_field.dart';
import 'package:dream_jop/features/home_page/presentation/views/widgets/header_section.dart';
import 'package:dream_jop/features/home_page/presentation/views/widgets/pdf_container.dart';
import 'package:dream_jop/features/home_page/presentation/views/widgets/question_list.dart';
import 'package:flutter/material.dart';

class ApplyToJobBody extends StatelessWidget {
  const ApplyToJobBody({super.key, required this.job});
  final Jobs job;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const CustomAppbar(
          back: true,
        ),
        const SizedBox(
          height: 25,
        ),
        HeaderSection(job: job),
        const SizedBox(
          height: 20,
        ),
        Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                children: [
                  Text(
                    'Job application',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextFormField(hintText: 'Your email address*'),
                  SizedBox(
                    height: 15,
                  ),
                  CustomTextFormField(hintText: 'Your phone number*'),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                    'Your updated CV*',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                   SizedBox(
                    height: 15,
                  ),
                  PdfContainer(),
                  SizedBox(
                    height: 20,
                  ),
                  QuestionsList(),
                  SizedBox(
                    height: 17,
                  ),
                  CustomButton(
                    text: 'Apply Now',
                    width: double.infinity,
                    height: 50,
                  ),
                    SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        )
    
      ],
    );
  }
}


