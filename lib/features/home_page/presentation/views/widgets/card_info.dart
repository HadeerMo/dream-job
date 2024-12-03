import 'package:dream_jop/core/utils/functions/truncate_text.dart';
import 'package:dream_jop/features/home_page/presentation/views/widgets/custom_small_text_container.dart';
import 'package:dream_jop/features/home_page/presentation/views/widgets/salary_text.dart';
import 'package:flutter/material.dart';

class CardInfo extends StatelessWidget {
  const CardInfo({
    super.key,
    required this.title,
    required this.subTitle,
    required this.jopType,
    required this.annualSalary,
  });
  final String title;
  final String subTitle;
  final String jopType;
  final int annualSalary;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          truncateText(title, 20),
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 2,
        ),
        Text(
          truncateText(subTitle, 20),
          style: const TextStyle(
              fontSize: 12,
              color: Color.fromARGB(255, 192, 191, 191),
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 3,
        ),
        Row(
          children: [
            CustomSmallTextContainer(
              text: jopType,
            ),
            const SizedBox(
              width: 4,
            ),
            const CustomSmallTextContainer(
              text: 'Onsite',
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        SalaryText(annualSalary: annualSalary,fontSize: 12,),
        // const SizedBox(
        //   height: 7,
        // ),
      ],
    );
  }
}
