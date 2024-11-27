import 'package:flutter/material.dart';

class SalaryText extends StatelessWidget {
  const SalaryText({
    super.key,
    required this.annualSalary,
  });

  final int annualSalary;

  @override
  Widget build(BuildContext context) {
    return Text(
      annualSalary > 999
          ? '${annualSalary / 1000}k/year'
          : '$annualSalary/year',
      style: const TextStyle(
          fontSize: 12, color: Color(0xff2623d3), fontWeight: FontWeight.bold),
    );
  }
}
