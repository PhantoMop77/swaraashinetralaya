import 'package:flutter/material.dart';

class Lasik extends StatefulWidget {
  const Lasik({super.key});

  @override
  State<Lasik> createState() => _LasikState();
}

class _LasikState extends State<Lasik> {
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
            'Laser Vision Correction Surgery (LASIK)',
            style: TextStyle(
              fontSize: 22,
            ),
          )),
    );
  }
}
