import 'package:flutter/material.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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