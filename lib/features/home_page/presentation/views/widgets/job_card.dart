import 'package:dream_jop/core/models/jobs/jobs.dart';
import 'package:dream_jop/features/home_page/presentation/views/widgets/card_image.dart';
import 'package:dream_jop/features/home_page/presentation/views/widgets/card_info.dart';
import 'package:dream_jop/features/home_page/presentation/views/widgets/card_landing.dart';
import 'package:flutter/material.dart';

class JobCard extends StatelessWidget {
  const JobCard({
    super.key,
    required this.job,
  });
  final Jobs job;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(bottom: 15),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: const Color.fromARGB(255, 158, 157, 157),
            width: .5,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CardImage(
                  imageUrl: 'assets/Images/companyLogo.jpg',
                ),
                const SizedBox(
                  width: 7,
                ),
                CardInfo(
                  title: job.name!,
                  subTitle: job.company!.shortName!,
                  jopType: job.type!,
                  annualSalary: 50000,
                ),
              ],
            ),
            const Landing()
          ],
        ),
      ),
    );
  }
}


