import 'package:flutter/material.dart';

class CorneaTransplant extends StatefulWidget {
  const CorneaTransplant({super.key});

  @override
  State<CorneaTransplant> createState() => _CorneaTransplantState();
}

class _CorneaTransplantState extends State<CorneaTransplant> {
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
            'Cornea Transplant (Keratoplasty)',
            style: TextStyle(
              fontSize: 22,
            ),
          )),
    );
  }
}
