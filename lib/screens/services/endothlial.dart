import 'package:flutter/material.dart';

class Endothlial extends StatefulWidget {
  const Endothlial({super.key});

  @override
  State<Endothlial> createState() => _EndothlialState();
}

class _EndothlialState extends State<Endothlial> {
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
            'Endothlial Keratoplasty (Sutureless)',
            style: TextStyle(
              fontSize: 22,
            ),
          )),
    );
  }
}
