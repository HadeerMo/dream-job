import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class UploadDoc {
  // Upload the document to a server
  Future<void> uploadCV({context, required File? file}) async {
    if (file == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('No document selected!')),
      );
      return;
    }

    // Mock upload process (Replace with your server URL)
    final directory = await getApplicationDocumentsDirectory();
    final targetDirectory = directory.path;
    final String fileName =
        file.path.split('/').last; // Extract the original file name
    final String targetPath = '$targetDirectory\\$fileName';

    try {
      final directory = Directory(targetDirectory);
      if (!directory.existsSync()) {
        directory.createSync(
            recursive: true); // Create the directory if it doesn't exist
      }

      // Copy the file to the target directory
      final savedFile = await file.copy(targetPath);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('CV saved at: $targetPath')),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to save file: $e')),
      );
    }
  }
}
