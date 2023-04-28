import 'dart:io';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void showSnackBar(BuildContext context, String content) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(content),
    ),
  );
}

String getNameFromEmail(String email) {
  //String email = guilherme@gmail.com
  //email.split('@')
  // result ['guilherme','@gmail.com']
  final nome = email.split('@')[0];
  return nome;
}

Future<List<File>> pickImages() async {
  List<File> images = [];
  final ImagePicker picker = ImagePicker();
  final imagesFiles = await picker.pickMultiImage();
  if (imagesFiles.isNotEmpty) {
    for (var image in imagesFiles) {
      images.add(File(image.path));
    }
  }
  return images;
}
