import 'package:flutter/material.dart';

class MicroInc extends StatefulWidget {
  const MicroInc({super.key});

  @override
  State<MicroInc> createState() => _MicroIncState();
}

class _MicroIncState extends State<MicroInc> {
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
            'Micro Incision Cataract Surgery (Sutureless)',
            style: TextStyle(
              fontSize: 22,
            ),
          )),
    );
  }
}
