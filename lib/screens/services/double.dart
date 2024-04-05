import 'package:flutter/material.dart';

class DoubleVision extends StatefulWidget {
  const DoubleVision({super.key});

  @override
  State<DoubleVision> createState() => _DoubleVisionState();
}

class _DoubleVisionState extends State<DoubleVision> {
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
            'Double Vision (Diplopia)',
            style: TextStyle(
              fontSize: 22,
            ),
          )),
    );
  }
}
