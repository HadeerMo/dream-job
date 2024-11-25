import 'dart:io';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';

class UploadImageField extends StatefulWidget {
  const UploadImageField({super.key});

  @override
  State<UploadImageField> createState() => _UploadImageFieldState();
}

class _UploadImageFieldState extends State<UploadImageField> {
  File? _image; // To store the selected image
  final ImagePicker _picker = ImagePicker();

  // Pick image from gallery or camera
  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await _picker.pickImage(source: source);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _pickImage(ImageSource.gallery);
      },
      child: Column(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 211, 211, 211),
                shape: BoxShape.circle),
            child: const Icon(
              FontAwesomeIcons.solidUser,
              color: Colors.white,
              size: 30,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Upload a photo',
            style: TextStyle(
              color: Color.fromARGB(255, 165, 165, 165),
            ),
          ),
          // ElevatedButton(
          //     onPressed: () {
          //       uploadImage(context: context, image: _image);
          //     },
          //     child: Text('save'))
        ],
      ),
    );
  }
}
