import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class UploadCV extends StatefulWidget {
  const UploadCV({
    super.key,
  });

  @override
  State<UploadCV> createState() => _UploadCVState();
}

class _UploadCVState extends State<UploadCV> {
  File? _file; // To store the selected image
  // Pick a document using FilePicker
  Future<void> pickDocument() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: [
        'pdf',
        'doc',
        'docx'
      ], // Restrict to specific file types
    );

    if (result != null) {
      setState(() {
        _file = File(result.files.single.path!);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pickDocument();
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 25),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: const Color.fromARGB(255, 158, 157, 157),
            width: .5,
          ),
        ),
        child: const Column(
          children: [
            Icon(Icons.upload_file),
            SizedBox(
              height: 5,
            ),
            Text(
              'Upload your CV',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 182, 183, 184),
              ),
            )
          ],
        ),
      ),
    );
  }
}
