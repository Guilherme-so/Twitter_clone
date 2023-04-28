import 'package:flutter/material.dart';

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
