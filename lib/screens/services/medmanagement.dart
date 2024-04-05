import 'package:flutter/material.dart';

class MedicalManagement extends StatefulWidget {
  const MedicalManagement({super.key});

  @override
  State<MedicalManagement> createState() => _MedicalManagementState();
}

class _MedicalManagementState extends State<MedicalManagement> {
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
            'Medical Management',
            style: TextStyle(
              fontSize: 22,
            ),
          )),
    );
  }
}
