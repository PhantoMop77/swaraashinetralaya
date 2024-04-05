import 'package:flutter/material.dart';

class PaediatricGlaucoma extends StatefulWidget {
  const PaediatricGlaucoma({super.key});

  @override
  State<PaediatricGlaucoma> createState() => _PaediatricGlaucomaState();
}

class _PaediatricGlaucomaState extends State<PaediatricGlaucoma> {
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
            'Paediatric Cataract & Glaucoma',
            style: TextStyle(
              fontSize: 22,
            ),
          )),
    );
  }
}
