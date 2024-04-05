import 'package:flutter/material.dart';

class RetinopathyPre extends StatefulWidget {
  const RetinopathyPre({super.key});

  @override
  State<RetinopathyPre> createState() => _RetinopathyPreState();
}

class _RetinopathyPreState extends State<RetinopathyPre> {
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
            'Retinopathy of Prematurity',
            style: TextStyle(
              fontSize: 22,
            ),
          )),
    );
  }
}
