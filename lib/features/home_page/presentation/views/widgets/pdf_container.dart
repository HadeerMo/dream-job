import 'package:dream_jop/features/home_page/presentation/views/widgets/pdf_image_container.dart';
import 'package:dream_jop/features/home_page/presentation/views/widgets/pdf_info.dart';
import 'package:dream_jop/core/widgets/upload_cv.dart';
import 'package:flutter/material.dart';

class PdfContainer extends StatefulWidget {
  const PdfContainer({
    super.key,
  });

  @override
  State<PdfContainer> createState() => _PdfContainerState();
}

class _PdfContainerState extends State<PdfContainer> {
  bool deleteCV = false;
  @override
  Widget build(BuildContext context) {
    return deleteCV
        ? const UploadCV()
        : Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(10)),
            padding:
                const EdgeInsets.only(top: 10, bottom: 10, right: 0, left: 17),
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
                  onPressed: () {
                    deleteCV = true;
                    setState(() {
                      
                    });
                  },
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
