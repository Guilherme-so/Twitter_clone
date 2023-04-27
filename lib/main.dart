import 'package:flutter/material.dart';
import 'package:twitter_clone/features/home/view/home_view.dart';
import 'theme/theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/features/auth/controller/auth.controller.dart';
import 'common/common.dart';
import 'features/auth/view/sign_up_view.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Twitter',
      theme: AppTheme.theme,
      home: ref.watch(currentUserAccountProvider).when(
            data: (user) {
              if (user != null) {
                return const HomeView();
              } else {
                return const SignUpView();
              }
            },
            error: (error, st) => ErrorPage(
              text: error.toString(),
            ),
            loading: () => const LoadingPage(),
          ),
    );
  }
}
