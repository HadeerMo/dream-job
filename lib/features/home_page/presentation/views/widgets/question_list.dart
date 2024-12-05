import 'package:dream_jop/features/home_page/presentation/views/widgets/job_question.dart';
import 'package:flutter/material.dart';

class QuestionsList extends StatelessWidget {
  const QuestionsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        JobQuestion(
            questionBody:
                'Do you have the necessary certifications for this role?*'),
        SizedBox(
          height: 15,
        ),
        JobQuestion(
            questionBody:
                'Do you have the required experience listed in the job description?*'),
      ],
    );
  }
}