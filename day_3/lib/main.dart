import 'package:day_3/views/home/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor:
              Colors.greenAccent.shade200.withOpacity(0.3)),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
