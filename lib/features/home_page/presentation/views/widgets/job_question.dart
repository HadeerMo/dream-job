import 'package:dream_jop/features/home_page/presentation/views/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

class JobQuestion extends StatefulWidget {
  const JobQuestion({
    super.key,
    required this.questionBody,
  });
  final String questionBody;
  @override
  State<JobQuestion> createState() => _JobQuestionState();
}

class _JobQuestionState extends State<JobQuestion> {
  String? selectedValue = 'Yes';
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.questionBody,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * .57,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomRadioButton(
                value: 'Yes',
                groupValue: selectedValue,
                onChange: (value) {
                  setState(() {
                    selectedValue = value;
                  });
                },
              ),
              CustomRadioButton(
                value: 'No',
                groupValue: selectedValue,
                onChange: (value) {
                  setState(() {
                    selectedValue = value;
                  });
                },
              ),
            ],
          ),
        )
      ],
    );
  }
}