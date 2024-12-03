import 'package:flutter/material.dart';

class ContentText extends StatelessWidget {
  const ContentText({
    super.key, required this.content, required this.maxLines,
  });

  final String content;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return Text(
      content
          .replaceAll('<p>', '')
          .replaceAll('<br>', '')
          .replaceAll('<b>', '')
          .replaceAll('</b>', '')
          .replaceAll('<li>', '')
          .replaceAll('</li>', '')
          .replaceAll('<ul>', '')
          .replaceAll('</ul>', '')
          .replaceAll('</p>', '')
          .replaceAll('</a>', ''),
      maxLines: maxLines,
    );
  }
}