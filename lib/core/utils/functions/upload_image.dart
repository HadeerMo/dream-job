 // Upload image to a server (mock example)
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

  Future<void> uploadImage({context,required File? image}) async {
     if (image == null) return;

    // Define the target directory and filename
    final directory = await getApplicationDocumentsDirectory();
    final targetDirectory = directory.path;
    final String fileName = image.path.split('/').last; // Extract the original file name
    final String targetPath = '$targetDirectory\\$fileName';

    try {
      // Ensure the directory exists
      final directory = Directory(targetDirectory);
      if (!directory.existsSync()) {
        directory.createSync(recursive: true); // Create the directory if it doesn't exist
      }

      // Copy the file to the target directory
      final savedFile = await image.copy(targetPath);

      // Show success message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Image saved at: $targetPath')),
      );
    } catch (e) {
      // Handle errors
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to save image: $e')),
      );
    }
  }


