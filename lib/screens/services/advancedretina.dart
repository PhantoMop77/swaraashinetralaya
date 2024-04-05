import 'package:flutter/material.dart';

class AdvancedRetinaVitreous extends StatefulWidget {
  const AdvancedRetinaVitreous({super.key});

  @override
  State<AdvancedRetinaVitreous> createState() => _AdvancedRetinaVitreousState();
}

class _AdvancedRetinaVitreousState extends State<AdvancedRetinaVitreous> {
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
            'Advanced Retina Vitreous Surgery',
            style: TextStyle(
              fontSize: 22,
            ),
          )),
    );
  }
}
