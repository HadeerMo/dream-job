import 'package:dream_jop/features/home_page/presentation/views/widgets/card_actions.dart';
import 'package:dream_jop/features/home_page/presentation/views/widgets/loading/loading_box.dart';
import 'package:flutter/material.dart';

class CardActingLoading extends StatelessWidget {
  const CardActingLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CardActions(),
        const SizedBox(
          height: 55,
        ),
        LoadingBox(
          width: MediaQuery.of(context).size.width * .15,
        ),
      ],
    );
  }
}