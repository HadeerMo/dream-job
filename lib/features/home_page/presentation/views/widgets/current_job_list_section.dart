import 'package:dream_jop/core/models/jobs/jobs.dart';
import 'package:dream_jop/features/home_page/presentation/views/widgets/job_card.dart';
import 'package:flutter/material.dart';

class CurrentJobListSection extends StatelessWidget {
  const CurrentJobListSection({
    super.key,
    required this.job,
  });

  final Jobs job;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Current job listings',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 15,
          ),
          JobCard(job: job),
        ],
      ),
    );
  }
}