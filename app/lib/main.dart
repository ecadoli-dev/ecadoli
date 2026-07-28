import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'features/splash/presentation/splash_screen.dart';

void main() {
  runApp(const EcadoliApp());
}

class EcadoliApp extends StatelessWidget {
  const EcadoliApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'ecadoli',

      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,

      themeMode: ThemeMode.system,

      home: const SplashScreen(),
    );
  }
}