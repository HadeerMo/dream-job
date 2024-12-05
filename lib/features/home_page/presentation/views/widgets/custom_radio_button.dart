import 'package:dream_jop/constant.dart';
import 'package:flutter/material.dart';

class CustomRadioButton extends StatelessWidget {
  const CustomRadioButton({
    super.key,
    required this.value,
    this.onChange,
    this.groupValue,
  });

  final void Function(String?)? onChange;
  final String value;
  final String? groupValue;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Transform.translate(
          offset: const Offset(
              -10, 0), // Adjust offset to "remove" any visible padding
          child: Radio<String>(
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            value: value,
            groupValue: groupValue,
            activeColor: btnColor,
            onChanged: onChange,
          ),
        ),
        Text(value),
      ],
    );
  }
}