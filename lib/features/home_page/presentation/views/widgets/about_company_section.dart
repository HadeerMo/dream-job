import 'package:dream_jop/constant.dart';
import 'package:dream_jop/features/home_page/presentation/views/widgets/content_text.dart';
import 'package:flutter/material.dart';

class AboutCompanySection extends StatelessWidget {
  const AboutCompanySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 23),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About the company',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 8,
          ),
          ContentText(
            content: loremText,
            maxLines: 7,
          ),
        ],
      ),
    );
  }
}