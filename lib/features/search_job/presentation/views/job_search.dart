import 'package:dream_jop/core/widgets/custom_bottom_bar.dart';
import 'package:dream_jop/features/search_job/presentation/views/widgets/job_search_body.dart';
import 'package:flutter/material.dart';

class JobSearch extends StatelessWidget {
  const JobSearch({super.key});
  static String id = 'jop Search';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: const JobSearchBody(),
      bottomNavigationBar: CustomBottomNavbar(
        pageName: JobSearch.id,
      ),
    ));
  }
}
