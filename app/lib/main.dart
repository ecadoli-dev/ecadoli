import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';

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

      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ecadoli'),
      ),

      body: const Center(
        child: Text(
          'Welcome to ecadoli',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}