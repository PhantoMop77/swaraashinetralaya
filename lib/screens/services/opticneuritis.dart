import 'package:flutter/material.dart';

class OpticNeuritis extends StatefulWidget {
  const OpticNeuritis({super.key});

  @override
  State<OpticNeuritis> createState() => _OpticNeuritisState();
}

class _OpticNeuritisState extends State<OpticNeuritis> {
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
            'Optic Neuritis',
            style: TextStyle(
              fontSize: 22,
            ),
          )),
    );
  }
}
