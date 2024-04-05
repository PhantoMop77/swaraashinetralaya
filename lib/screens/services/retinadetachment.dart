import 'package:flutter/material.dart';

class RetinaDetachment extends StatefulWidget {
  const RetinaDetachment({super.key});

  @override
  State<RetinaDetachment> createState() => _RetinaDetachmentState();
}

class _RetinaDetachmentState extends State<RetinaDetachment> {
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
            'Retina Detachment Surgery',
            style: TextStyle(
              fontSize: 22,
            ),
          )),
    );
  }
}
