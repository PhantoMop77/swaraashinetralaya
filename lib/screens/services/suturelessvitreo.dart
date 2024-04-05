import 'package:flutter/material.dart';

class SuturelessVitreoRetinal extends StatefulWidget {
  const SuturelessVitreoRetinal({super.key});

  @override
  State<SuturelessVitreoRetinal> createState() =>
      _SuturelessVitreoRetinalState();
}

class _SuturelessVitreoRetinalState extends State<SuturelessVitreoRetinal> {
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
            'Sutureless Vitreo-Retinal Surgery',
            style: TextStyle(
              fontSize: 22,
            ),
          )),
    );
  }
}
