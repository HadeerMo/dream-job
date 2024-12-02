import 'package:dream_jop/core/models/jobs/jobs.dart';
import 'package:dream_jop/core/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class JobDetailsBody extends StatelessWidget {
  const JobDetailsBody({super.key, required this.job});
  final Jobs job;
  @override
  Widget build(BuildContext context) {
    return ListView(children: const [
      CustomAppbar(
        back: Icons.arrow_back_ios,
        markIt: Icons.bookmark_border,
      ),
    ]);
  }
}
