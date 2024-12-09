import 'package:dream_jop/features/search_job/presentation/views/widgets/chose_type_field.dart';
import 'package:flutter/material.dart';

class ChoseJobType extends StatelessWidget {
  const ChoseJobType({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ChoseTypeField(title: 'Full-time',),
        ChoseTypeField(title: 'Part-time',),
        ChoseTypeField(title: 'Contact',),
      ],
    );
  }
}