import 'package:flutter/material.dart';

class MulifocalToric extends StatefulWidget {
  const MulifocalToric({super.key});

  @override
  State<MulifocalToric> createState() => _MulifocalToricState();
}

class _MulifocalToricState extends State<MulifocalToric> {
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
            'Multifocal & Toric IOL Implation',
            style: TextStyle(
              fontSize: 22,
            ),
          )),
    );
  }
}
