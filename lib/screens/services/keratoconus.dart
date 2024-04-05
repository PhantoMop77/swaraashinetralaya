import 'package:flutter/material.dart';

class Keratoconus extends StatefulWidget {
  const Keratoconus({super.key});

  @override
  State<Keratoconus> createState() => _KeratoconusState();
}

class _KeratoconusState extends State<Keratoconus> {
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
            'Keratoconus Clinic',
            style: TextStyle(
              fontSize: 22,
            ),
          )),
    );
  }
}
