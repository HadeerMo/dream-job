import 'package:flutter/material.dart';

class PDFImageContainer extends StatelessWidget {
  const PDFImageContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .089,
      height: MediaQuery.of(context).size.width * .11,
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/Images/pdfImage.png'),
        fit: BoxFit.cover,
      )),
    );
  }
}