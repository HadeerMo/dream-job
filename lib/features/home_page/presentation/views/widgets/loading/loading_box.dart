import 'package:flutter/material.dart';

class LoadingBox extends StatelessWidget {
  const LoadingBox({
    super.key,
    required this.width,
  });
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 17,
      color: Colors.grey.shade100,
    );
  }
}