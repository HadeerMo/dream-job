import 'package:flutter/material.dart';

class CustomSmallTextContainer extends StatelessWidget {
  const CustomSmallTextContainer({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      decoration: BoxDecoration(
          color: const Color(0xfff3f4f7),
          borderRadius: BorderRadius.circular(5)),
      child: Text(
        text,
        style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
      ),
    );
  }
}
