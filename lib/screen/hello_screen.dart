import 'dart:math';

import 'package:flutter/material.dart';

class HelloScreen extends StatefulWidget {
  const HelloScreen({super.key});

  @override
  State<HelloScreen> createState() => _HelloScreenState();
}

class _HelloScreenState extends State<HelloScreen> {
 
  Color backgroundColor = Colors.white;
   String randomText = 'Hello There';

void changeBackgroundColor() {
    setState(() {
      backgroundColor = Color.fromRGBO(
        Random().nextInt(256),
        Random().nextInt(256),
        Random().nextInt(256),
        1,
      );
    });
  }
  void changeBackgroundColorAndText() {
    setState(() {
      backgroundColor = Color.fromRGBO(
        Random().nextInt(256),
        Random().nextInt(256),
        Random().nextInt(256),
        1,
      );

      final words = [
        'Solid Sowftwar',
        'Flutter',
        'Dart',
        'Material',
        'Mobile',
        'App',
        'Development',
      ];
      randomText = words[Random().nextInt(words.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        changeBackgroundColorAndText();
      },
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Center(
          child: Text(
            randomText,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
