import 'package:flutter/material.dart';

class PaediatricCataract extends StatefulWidget {
  const PaediatricCataract({super.key});

  @override
  State<PaediatricCataract> createState() => _PaediatricCataractState();
}

class _PaediatricCataractState extends State<PaediatricCataract> {
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
            'Paediatric Cataract',
            style: TextStyle(
              fontSize: 22,
            ),
          )),
    );
  }
}
