import 'package:flutter/material.dart';

class LaserIridotomy extends StatefulWidget {
  const LaserIridotomy({super.key});

  @override
  State<LaserIridotomy> createState() => _LaserIridotomyState();
}

class _LaserIridotomyState extends State<LaserIridotomy> {
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
            'Laser Iridotomy / SLT for Glaucoma',
            style: TextStyle(
              fontSize: 22,
            ),
          )),
    );
  }
}
