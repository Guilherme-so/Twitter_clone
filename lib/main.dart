import 'package:flutter/material.dart';
import 'features/auth/view/login_view.dart';
import 'features/auth/view/sign_up_view.dart';
import 'theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Twitter',
      theme: AppTheme.theme,
      home: const SignUpView(),
    );
  }
}
