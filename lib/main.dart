import 'package:flutter/material.dart';
import 'package:olx_app/navbar.dart';
import 'package:olx_app/verify_number_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: VerifyNumberScreen(),
    );
  }
}