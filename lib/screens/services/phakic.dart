import 'package:flutter/material.dart';

class PhakicIOL extends StatefulWidget {
  const PhakicIOL({super.key});

  @override
  State<PhakicIOL> createState() => _PhakicIOLState();
}

class _PhakicIOLState extends State<PhakicIOL> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 122, 228, 126),
          toolbarHeight: 100,
          elevation: 5,
          shadowColor: Colors.black,
          centerTitle: true,
          title: const Text(
            'Phakic IOL Implant (very high numbers)',
            style: TextStyle(
              fontSize: 22,
            ),
          )),
    );
  }
}
