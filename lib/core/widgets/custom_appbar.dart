import 'package:dream_jop/constant.dart';
import 'package:dream_jop/core/widgets/main_title.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: mainColor,
      height: MediaQuery.of(context).size.height *.1,
      child: const Center(
        child: MainTitle(
              fontSize: 27,
            ),
      ),
    );
  }
}