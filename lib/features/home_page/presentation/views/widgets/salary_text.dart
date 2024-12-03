import 'package:flutter/material.dart';

class SalaryText extends StatelessWidget {
  const SalaryText({
    super.key,
    required this.annualSalary, required this.fontSize,
  });

  final int annualSalary;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      annualSalary > 999
          ? '${annualSalary / 1000}k/year'
          : '$annualSalary/year',
      style: TextStyle(
          fontSize: fontSize, color: const Color(0xff2623d3), fontWeight: FontWeight.bold),
    );
  }
}
