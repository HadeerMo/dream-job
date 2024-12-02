import 'package:flutter/material.dart';

class LoadingImage extends StatelessWidget {
  const LoadingImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .1,
      height: MediaQuery.of(context).size.width * .1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey.shade100,
      ),
    );
  }
}