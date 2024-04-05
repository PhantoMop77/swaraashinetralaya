import 'package:flutter/material.dart';

class ManagementSquint extends StatefulWidget {
  const ManagementSquint({super.key});

  @override
  State<ManagementSquint> createState() => _ManagementSquintState();
}

class _ManagementSquintState extends State<ManagementSquint> {
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
            'Management Squint & Lazy Eyes',
            style: TextStyle(
              fontSize: 22,
            ),
          )),
    );
  }
}
