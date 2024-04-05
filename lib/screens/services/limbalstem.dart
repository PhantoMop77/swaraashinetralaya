import 'package:flutter/material.dart';

class LimbalStem extends StatefulWidget {
  const LimbalStem({super.key});

  @override
  State<LimbalStem> createState() => _LimbalStemState();
}

class _LimbalStemState extends State<LimbalStem> {
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
            'Limbal Stem Cell Transplantation',
            style: TextStyle(
              fontSize: 22,
            ),
          )),
    );
  }
}
