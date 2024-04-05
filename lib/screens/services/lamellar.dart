import 'package:flutter/material.dart';

class Lamellar extends StatefulWidget {
  const Lamellar({super.key});

  @override
  State<Lamellar> createState() => _LamellarState();
}

class _LamellarState extends State<Lamellar> {
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
            'Lamellar Corneal Transplants',
            style: TextStyle(
              fontSize: 22,
            ),
          )),
    );
  }
}
