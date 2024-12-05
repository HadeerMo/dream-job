import 'package:flutter/material.dart';

class PDFInfo extends StatelessWidget {
  const PDFInfo({
    super.key,
    required this.name,
    required this.size,
  });
  final String name;
  final String size;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(name),
        const SizedBox(
          height: 5,
        ),
        Text(
          size,
          style: const TextStyle(
            fontSize: 10,
            color: Color.fromARGB(255, 158, 157, 157),
          ),
        ),
      ],
    );
  }
}