import 'package:dream_jop/features/search_job/presentation/views/widgets/dropdown.dart';
import 'package:flutter/material.dart';

class DropDownItem extends StatelessWidget {
  const DropDownItem({
    super.key,
    required this.items,
    required this.title, this.onChanged,
  });

  final List<String> items;
  final String title;
  final Function(String? value)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 12,
        ),
        Dropdown(
          items: items,
          selectedValue: items[0],
          onChanged: onChanged,
        )
      ],
    );
  }
}
