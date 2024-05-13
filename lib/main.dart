import 'package:flutter/material.dart';
import 'package:profile_ui/account_screen.dart';
import 'package:profile_ui/silverappbar.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),       
        useMaterial3: true,
      ),
      home:  ScrollingAppBarExample(),
    );
  }
}

