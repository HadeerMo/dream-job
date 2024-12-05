import 'package:dream_jop/core/models/jobs/jobs.dart';
import 'package:dream_jop/core/widgets/custom_appbar.dart';
import 'package:dream_jop/core/widgets/custom_devider.dart';
import 'package:dream_jop/features/home_page/presentation/views/widgets/content_text.dart';
import 'package:dream_jop/features/home_page/presentation/views/widgets/details_info_section.dart';
import 'package:dream_jop/features/home_page/presentation/views/widgets/ending_section.dart';
import 'package:dream_jop/features/home_page/presentation/views/widgets/header_section.dart';
import 'package:flutter/material.dart';

class JobDetailsBody extends StatelessWidget {
  const JobDetailsBody({super.key, required this.job});
  final Jobs job;
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      const CustomAppbar(
        back: true,
        markIt: true,
      ),
      const SizedBox(
        height: 25,
      ),
      HeaderSection(job: job),
      const SizedBox(
        height: 23,
      ),
      DetailsInfoSection(job: job),
      const SizedBox(
        height: 16,
      ),
      const DeviderWithPadding(),
      const SizedBox(
        height: 16,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23),
        child: ContentText(
          content: job.contents!,
          maxLines: 20,
        ),
      ),
      const SizedBox(
        height: 30,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23),
        child: EndingSection(
          job: job,
        ),
      ),
      const SizedBox(
        height: 23,
      ),
    ]);
  }
}
