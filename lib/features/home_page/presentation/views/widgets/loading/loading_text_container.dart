import 'package:flutter/material.dart';

class LoadingTextContainer extends StatelessWidget {
  const LoadingTextContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 17,
      width: MediaQuery.of(context).size.width * .16,
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      decoration: BoxDecoration(
          color: const Color(0xfff3f4f7),
          borderRadius: BorderRadius.circular(5)),
    );
  }
}