import 'package:flutter/material.dart';

class ArtificialEye extends StatefulWidget {
  const ArtificialEye({super.key});

  @override
  State<ArtificialEye> createState() => _ArtificialEyeState();
}

class _ArtificialEyeState extends State<ArtificialEye> {
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
            'Artificial Cosmetic Eyes',
            style: TextStyle(
              fontSize: 22,
            ),
          )),
    );
  }
}
