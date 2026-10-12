import 'dart:ui';

import 'package:flutter/material.dart';
import 'widgets/custom_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("24WH1A05L7-Custom Button")),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomButton(
                text: "Click Me (Blue)",
                onPressed: () {
                  print("Blue button clicked!");
                },
              ),
              const SizedBox(height: 20),
              CustomButton(
                text: "Click Me (Green)",
                color: Colors.green,
                onPressed: () {
                  print("Green button clicked!");
                },
              ),
              const SizedBox(height: 20),
              CustomButton(
                text: "Click Me (Red)",
                color: Colors.red,
                onPressed: () {
                  print("Red button clicked!");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}








custom_widget.DartPluginRegistrant
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.color = Colors.blue, // default button color
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color, // only set button color
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(fontSize: 18, color: Colors.white),
      ),
    );
  }
}