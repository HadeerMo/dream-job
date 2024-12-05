import 'package:dream_jop/core/models/jobs/jobs.dart';
import 'package:dream_jop/core/widgets/custom_bottom_bar.dart';
import 'package:dream_jop/features/home_page/presentation/views/widgets/apply_to_job_body.dart';
import 'package:flutter/material.dart';

class ApplyToJobPage extends StatelessWidget {
  const ApplyToJobPage({super.key});
  static String id = 'Apply to job';
  @override
  Widget build(BuildContext context) {
    final job = ModalRoute.of(context)?.settings.arguments as Jobs;
    return SafeArea(
        child: Scaffold(
      body: ApplyToJobBody(
        job: job,
      ),
      bottomNavigationBar: const CustomBottomNavbar(),
    ));
  }
}
