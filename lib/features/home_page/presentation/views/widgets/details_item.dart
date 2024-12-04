import 'package:dream_jop/constant.dart';
import 'package:flutter/material.dart';

class DetailsItem extends StatelessWidget {
  const DetailsItem({
    super.key,
    required this.title,
    required this.icon,
    required this.iconSize,
  });

  final String title;
  final double iconSize;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 1/3,
      child: Column(
        children: [
          Icon(
            icon,
            color: ntbColor,
            size: iconSize,
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold
            ),
          ),
        ],
      ),
    );
  }
}
