import 'package:dream_jop/core/utils/functions/truncate_text.dart';
import 'package:dream_jop/features/home_page/presentation/views/widgets/card_image.dart';
import 'package:flutter/material.dart';

class JobApplicationCard extends StatelessWidget {
  const JobApplicationCard({
    super.key, required this.title, required this.subTitle, required this.imageSrc,
  });
  final String title;
  final String subTitle;
  final String imageSrc;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CompanyLogo(
          imageUrl: imageSrc,
          size: MediaQuery.of(context).size.width * .11,
        ),
        const SizedBox(
          width: 7,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              truncateText(title, 20),
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              truncateText(subTitle, 20),
              style: const TextStyle(
                  fontSize: 12.3,
                  color: Color.fromARGB(255, 192, 191, 191),
                  fontWeight: FontWeight.bold),
            ),
          ],
        )
      ],
    );
  }
}
