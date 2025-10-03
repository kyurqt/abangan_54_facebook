import 'package:facebook/page/maincustom.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WoofyBook',
      theme: ThemeData(
  
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 196, 17, 212)),
      ),
      home: MainCustomPage(),
    );
  }
}