import 'package:flutter/material.dart';

class DiabeticRetinopathy extends StatefulWidget {
  const DiabeticRetinopathy({super.key});

  @override
  State<DiabeticRetinopathy> createState() => _DiabeticRetinopathyState();
}

class _DiabeticRetinopathyState extends State<DiabeticRetinopathy> {
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
            'Diabetic Retinopathy',
            style: TextStyle(
              fontSize: 22,
            ),
          )),
    );
  }
}
