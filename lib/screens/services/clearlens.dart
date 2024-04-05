import 'package:flutter/material.dart';

class ClearLens extends StatefulWidget {
  const ClearLens({super.key});

  @override
  State<ClearLens> createState() => _ClearLensState();
}

class _ClearLensState extends State<ClearLens> {
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
            'Clear Lens Extraction',
            style: TextStyle(
              fontSize: 22,
            ),
          )),
    );
  }
}
