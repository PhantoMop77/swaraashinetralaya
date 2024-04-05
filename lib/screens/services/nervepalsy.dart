import 'package:flutter/material.dart';

class NervePalsy extends StatefulWidget {
  const NervePalsy({super.key});

  @override
  State<NervePalsy> createState() => _NervePalsyState();
}

class _NervePalsyState extends State<NervePalsy> {
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
            'Nerve Palsy',
            style: TextStyle(
              fontSize: 22,
            ),
          )),
    );
  }
}
