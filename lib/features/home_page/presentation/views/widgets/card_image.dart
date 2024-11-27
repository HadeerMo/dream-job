import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  const CardImage({
    super.key,
    required this.imageUrl,
  });
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .1,
      height: MediaQuery.of(context).size.width * .1,
      decoration: BoxDecoration(
        border: const Border.symmetric(
          vertical: BorderSide(color: Colors.black),
          horizontal: BorderSide(color: Colors.black),
        ),
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
