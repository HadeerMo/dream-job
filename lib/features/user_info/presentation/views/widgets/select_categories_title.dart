import 'package:dream_jop/constant.dart';
import 'package:flutter/material.dart';

class SelectCategoriesTitle extends StatelessWidget {
  const SelectCategoriesTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Select your jop category',
          style: TextStyle(
              color: mainColor, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * .65,
          child: const Opacity(
            opacity: .4,
            child: Text(
              'Select one or more categories suiable for you search',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: mainColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
