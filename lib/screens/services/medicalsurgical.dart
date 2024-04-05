import 'package:flutter/material.dart';

class MedicalSurgical extends StatefulWidget {
  const MedicalSurgical({super.key});

  @override
  State<MedicalSurgical> createState() => _MedicalSurgicalState();
}

class _MedicalSurgicalState extends State<MedicalSurgical> {
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
            'Medical & Surgical Management of Uveitis',
            style: TextStyle(
              fontSize: 22,
            ),
          )),
    );
  }
}
