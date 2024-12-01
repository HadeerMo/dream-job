import 'package:flutter/material.dart';

class CardActions extends StatelessWidget {
  const CardActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.mail_outline,
            )),
        const SizedBox(
          width: 15,
        ),
        GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.bookmark_border,
            ))
      ],
    );
  }
}
