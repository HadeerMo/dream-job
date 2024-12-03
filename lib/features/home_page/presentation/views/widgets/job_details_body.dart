import 'package:dream_jop/core/models/jobs/jobs.dart';
import 'package:dream_jop/core/utils/functions/sub_string_text.dart';
import 'package:dream_jop/core/utils/functions/truncate_text.dart';
import 'package:dream_jop/core/widgets/custom_appbar.dart';
import 'package:dream_jop/features/home_page/presentation/views/widgets/card_image.dart';
import 'package:flutter/material.dart';

class JobDetailsBody extends StatelessWidget {
  const JobDetailsBody({super.key, required this.job});
  final Jobs job;
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      const CustomAppbar(
        back: Icons.arrow_back_ios,
        markIt: Icons.bookmark_border,
      ),
      const SizedBox(
        height: 25,
      ),
      Column(
        children: [
          CompanyLogo(
            imageUrl: 'assets/Images/jobLogo.png',
            size: MediaQuery.of(context).size.width * .17,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            subString(job.name!,20),
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(
            height: 1,
          ),
          Text(
            subString(job.company!.shortName!,20),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Color.fromARGB(255, 192, 191, 191),
            ),
          ),
        ],
      ),
    ]);
  }
}
