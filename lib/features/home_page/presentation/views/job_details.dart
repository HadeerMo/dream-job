import 'package:dream_jop/core/models/jobs/jobs.dart';
import 'package:dream_jop/features/home_page/presentation/views/widgets/job_details_body.dart';
import 'package:flutter/material.dart';

class JobDetails extends StatelessWidget {
  const JobDetails({super.key});
  static String id = 'job details';
  @override
  Widget build(BuildContext context) {
    final job = ModalRoute.of(context)?.settings.arguments as Jobs;
    return SafeArea(
      child: Scaffold(
        body: JobDetailsBody(
          job: job,
        ),
      ),
    );
  }
}
