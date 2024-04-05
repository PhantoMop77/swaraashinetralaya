import 'package:flutter/material.dart';

class PaediatricRetinalDiseases extends StatefulWidget {
  const PaediatricRetinalDiseases({super.key});

  @override
  State<PaediatricRetinalDiseases> createState() =>
      _PaediatricRetinalDiseasesState();
}

class _PaediatricRetinalDiseasesState extends State<PaediatricRetinalDiseases> {
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
            'Paediatric Retinal Diseases',
            style: TextStyle(
              fontSize: 22,
            ),
          )),
    );
  }
}
