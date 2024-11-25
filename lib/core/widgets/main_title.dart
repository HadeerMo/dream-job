import 'package:flutter/material.dart';

class MainTitle extends StatelessWidget {
  const MainTitle({
    super.key, required this.fontSize,
  });
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      'JOBSNAP',
      style: TextStyle(
        color: Colors.white,
        fontSize: fontSize,
        fontFamily: 'Protest Revolution',
        decoration: TextDecoration.none,
      ),
    );
  }
}
