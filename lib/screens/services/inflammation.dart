import 'package:flutter/material.dart';

class InflammationEye extends StatefulWidget {
  const InflammationEye({super.key});

  @override
  State<InflammationEye> createState() => _InflammationEyeState();
}

class _InflammationEyeState extends State<InflammationEye> {
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
            'Inflammation of the Eyes',
            style: TextStyle(
              fontSize: 22,
            ),
          )),
    );
  }
}
