import 'package:dream_jop/constant.dart';
import 'package:flutter/material.dart';

class CustomProfileButton extends StatelessWidget {
  const CustomProfileButton({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: MediaQuery.of(context).size.width * .402,
        padding: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: btnColor,
            )),
        child: Center(
            child: Text(
          title,
          style: TextStyle(
            color: btnColor,
            fontWeight: FontWeight.bold,
          ),
        )),
      ),
    );
  }
}
