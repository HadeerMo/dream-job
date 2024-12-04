import 'package:dream_jop/core/models/jobs/jobs.dart';
import 'package:dream_jop/core/widgets/custom_bottom_bar.dart';
import 'package:dream_jop/features/home_page/presentation/views/widgets/company_details_body.dart';
import 'package:flutter/material.dart';

class CompanyDetails extends StatelessWidget {
  const CompanyDetails({super.key});
  static String id = 'Company details';
  @override
  Widget build(BuildContext context) {
      final job = ModalRoute.of(context)?.settings.arguments as Jobs;
    return SafeArea(
        child: Scaffold(
      body: CompanyDetailsBody(job: job,),
      bottomNavigationBar: const CustomBottomNavbar(),
    ));
  }
}
