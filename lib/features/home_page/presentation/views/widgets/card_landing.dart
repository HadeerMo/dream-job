import 'package:dream_jop/features/home_page/presentation/views/widgets/card_actions.dart';
import 'package:flutter/material.dart';

class Landing extends StatelessWidget {
  const Landing({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CardActions(),
        SizedBox(
          height: 55,
        ),
        Text(
          '20 hrs ago',
          style: TextStyle(
            fontSize: 10,
            color: Color.fromARGB(255, 158, 157, 157),
          ),
        ),
      ],
    );
  }
}
