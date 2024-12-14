import 'package:flutter/material.dart';
import 'package:spotify_clone/core/configs/utils/app_routes.dart';
import 'package:spotify_clone/lib/core/configs/theme/app_theme.dart';
import 'package:spotify_clone/presentation/pages/intro/get_started.dart';
import 'package:spotify_clone/presentation/pages/splash/splash.dart';

import 'core/configs/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Spotify',
      theme: AppTheme.darkTheme,
      home: Splash(),

      routes: {
        '/get_started':(context) => const GetStarted()
        // AppRoutes.getStarted:(context) => const GetStarted()
      },
    );
  }
}
