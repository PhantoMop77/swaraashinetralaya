import 'package:flutter/material.dart';

class CustomLaser extends StatefulWidget {
  const CustomLaser({super.key});

  @override
  State<CustomLaser> createState() => _CustomLaserState();
}

class _CustomLaserState extends State<CustomLaser> {
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
            'Customised Laser Vision Correction RElex/SMILE',
            style: TextStyle(
              fontSize: 22,
            ),
          )),
    );
  }
}
