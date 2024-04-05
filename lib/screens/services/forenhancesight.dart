import 'package:flutter/material.dart';

class ForEnhanceSight extends StatefulWidget {
  const ForEnhanceSight({super.key});

  @override
  State<ForEnhanceSight> createState() => _ForEnhanceSightState();
}

class _ForEnhanceSightState extends State<ForEnhanceSight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 122, 228, 126),
          toolbarHeight: 65,
          elevation: 5,
          shadowColor: Colors.black,
          centerTitle: true,
          title: const Text(
            'For Enhancing Sight',
            style: TextStyle(
              fontSize: 22,
            ),
          )),
    );
  }
}
