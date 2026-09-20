import 'package:flutter/material.dart';

void main() {
  runApp(const FitFlowApp());
}

class FitFlowApp extends StatelessWidget {
  const FitFlowApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FitFlow Redesign',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const FitFlowHome(),
    );
  }
}

class FitFlowHome extends StatelessWidget {
  const FitFlowHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FitFlow Home'),
      ),
      body: const Center(
        child: Text('Welcome to FitFlow Frontend!'),
      ),
    );
  }
}
