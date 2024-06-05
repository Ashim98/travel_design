import 'package:flutter/material.dart';
import 'package:travel/splashscreen.dart';

void main() => runApp(const Travel());
class Travel extends StatelessWidget {
  const Travel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Splashscreen(),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: const TextTheme(
          headlineLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.w600,color: Color(0xff191818)),
          headlineMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Color(0xff474141) ),
          bodyLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Color(0xff191818) ),
          bodyMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff191818))
        ),
      ),
    );
  }
}