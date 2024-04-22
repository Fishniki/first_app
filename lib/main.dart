
import 'package:first_app/GradientColor.dart';
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
      home: Scaffold(
        appBar: AppBar(
            title: const Text("Gacha Orang Waifu"), 
            centerTitle: true,
          ),
        body:  const GradienContainer(Colors.red, Colors.yellow, Colors.green)
      ),
    );
  }
}

