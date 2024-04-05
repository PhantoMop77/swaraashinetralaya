import 'package:flutter/material.dart';

class Pappiloedea extends StatefulWidget {
  const Pappiloedea({super.key});

  @override
  State<Pappiloedea> createState() => _PappiloedeaState();
}

class _PappiloedeaState extends State<Pappiloedea> {
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
            'Pappiloedea',
            style: TextStyle(
              fontSize: 22,
            ),
          )),
    );
  }
}
