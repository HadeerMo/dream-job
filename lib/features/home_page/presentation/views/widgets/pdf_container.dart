import 'package:dream_jop/features/home_page/presentation/views/widgets/pdf_image_container.dart';
import 'package:dream_jop/features/home_page/presentation/views/widgets/pdf_info.dart';
import 'package:flutter/material.dart';

class PdfContainer extends StatelessWidget {
  const PdfContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black,width: 1),
          borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.only(
          top: 10, bottom: 10, right: 0, left: 17),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            children: [
              PDFImageContainer(),
              SizedBox(
                width: 17,
              ),
              PDFInfo(
                name: 'Hadeer Mohammed.pdf',
                size: '1MB',
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.close,
              size: 17,
              weight: 900,
            ),
          ),
        ],
      ),
    );
  }
}