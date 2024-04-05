import 'package:flutter/material.dart';

class MacularDegeneration extends StatefulWidget {
  const MacularDegeneration({super.key});

  @override
  State<MacularDegeneration> createState() => _MacularDegenerationState();
}

class _MacularDegenerationState extends State<MacularDegeneration> {
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
            'Macular Degeneration Treatment',
            style: TextStyle(
              fontSize: 22,
            ),
          )),
    );
  }
}
