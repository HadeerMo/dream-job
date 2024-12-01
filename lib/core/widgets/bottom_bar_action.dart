import 'package:dream_jop/constant.dart';
import 'package:flutter/material.dart';

class BottomBarAction extends StatelessWidget {
  const BottomBarAction({
    super.key,
    required this.pageName,
    required this.onPressed,
    required this.icon,
    required this.navFor,
  });

  final String? pageName;
  final void Function() onPressed;
  final IconData icon;
  final String navFor;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        icon,
        color: pageName == navFor
            ? ntbColor
            : const Color.fromARGB(255, 219, 219, 219),
        size: 23,
      ),
    );
  }
}
