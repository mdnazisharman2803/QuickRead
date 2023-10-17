import 'dart:async';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class UploadDocumentService {
  static StreamController<double> uploadProgressController =
      StreamController<double>.broadcast();

  static Future<String?> uploadFiles(
    BuildContext context,
    isUploading,
    Function(dynamic) onUploading,
  ) async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        allowMultiple: false,
      );
      if (result != null) {
        File fileName = File(result.files.single.path!);
        isUploading = true;
        onUploading(isUploading);
        // await Future.delayed(Duration(seconds: 3));
        for (int i = 0; i <= 3; i++) {
          uploadProgressController.sink.add(i / 3);
          await Future.delayed(Duration(seconds: 1));
        }
        isUploading = false;
        onUploading(isUploading);
        print("file $fileName");
      } else {
        // User canceled the picker
      }
    } catch (e, s) {
      rethrow;
    }
  }
}
