import 'package:dream_jop/core/models/jobs/jobs.dart';
import 'package:dream_jop/core/widgets/custom_appbar.dart';
import 'package:dream_jop/core/widgets/custom_devider.dart';
import 'package:dream_jop/features/home_page/presentation/views/widgets/about_company_section.dart';
import 'package:dream_jop/features/home_page/presentation/views/widgets/current_job_list_section.dart';
import 'package:dream_jop/features/home_page/presentation/views/widgets/details_item.dart';
import 'package:dream_jop/features/home_page/presentation/views/widgets/header_section.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CompanyDetailsBody extends StatelessWidget {
  const CompanyDetailsBody({super.key, required this.job});
  final Jobs job;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const CustomAppbar(
          back:true,
        ),
        const SizedBox(
          height: 25,
        ),
        HeaderSection(job: job),
        const SizedBox(
          height: 23,
        ),
        DetailsItem(
          title: job.locations![0].name! == 'Flexible / Remote'
              ? 'Remote'
              : job.locations![0].name!,
          iconSize: 23,
          icon: FontAwesomeIcons.mapPin,
        ),
        const SizedBox(
          height: 16,
        ),
        const DeviderWithPadding(),
        const SizedBox(
          height: 16,
        ),
        const AboutCompanySection(),
        const SizedBox(
          height: 23,
        ),
        CurrentJobListSection(job: job),
          const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}




