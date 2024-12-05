import 'package:dream_jop/core/models/jobs/jobs.dart';
import 'package:dream_jop/core/widgets/custom_button.dart';
import 'package:dream_jop/features/home_page/presentation/views/apply_to_job_page.dart';
import 'package:dream_jop/features/home_page/presentation/views/widgets/salary_text.dart';
import 'package:flutter/material.dart';

class EndingSection extends StatelessWidget {
  const EndingSection({
    super.key,
    required this.job,
  });
  final Jobs job;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Salary',
              style: TextStyle(
                  fontSize: 12,
                  color: Color.fromARGB(255, 192, 191, 191),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 4,
            ),
            SalaryText(
              annualSalary: 530000,
              fontSize: 19,
            ),
          ],
        ),
        CustomButton(
          onPressed: () {
            Navigator.of(context).pushNamed(ApplyToJobPage.id,arguments: job);
          },
          text: 'Apply now',
          width: MediaQuery.of(context).size.width * .43,
          height: 50,
        )
      ],
    );
  }
}
