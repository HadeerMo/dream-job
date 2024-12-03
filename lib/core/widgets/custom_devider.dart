import 'package:flutter/material.dart';

class DeviderWithPadding extends StatelessWidget {
  const DeviderWithPadding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 23),
      child: Divider(
      color: Colors.black,
      thickness: .3,
          ),
    );
  }
}