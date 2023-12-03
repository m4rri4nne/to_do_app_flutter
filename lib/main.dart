import 'package:flutter/material.dart';
import 'package:to_do_app_flutter/screens/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Our Reminder App',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.orange.shade300,
            background: Colors.orange.shade300),
        fontFamily: 'Poppins',
      ),
      home: const Welcome(),
    );
  }
}
