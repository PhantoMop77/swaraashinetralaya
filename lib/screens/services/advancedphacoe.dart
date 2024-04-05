import 'package:flutter/material.dart';

class AdvancedPhacoe extends StatefulWidget {
  const AdvancedPhacoe({super.key});

  @override
  State<AdvancedPhacoe> createState() => _AdvancedPhacoeState();
}

class _AdvancedPhacoeState extends State<AdvancedPhacoe> {
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
            'Advanced Phacoemulsification with Foldable IOL Implantion',
            style: TextStyle(
              fontSize: 22,
            ),
          )),
    );
  }
}
