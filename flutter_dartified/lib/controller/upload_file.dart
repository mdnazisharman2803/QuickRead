import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UploadDocumentService {
  static Future<String?> uploadFiles(BuildContext context, result) async {
    print("result $result");
    try {
      if (result != null) {
        File fileName = File(result.files.single.path!);
        print("file $fileName");
      } else {} // User canceled the picker
    } catch (e, s) {
      rethrow;
    }
  }
}
