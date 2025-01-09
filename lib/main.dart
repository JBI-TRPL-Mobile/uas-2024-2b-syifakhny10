import 'package:flutter/material.dart';
import 'package:template_project/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UAS SYIFA',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 248, 150, 183)),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}