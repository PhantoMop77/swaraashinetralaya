import 'package:flutter/material.dart';

class ManagementCong extends StatefulWidget {
  const ManagementCong({super.key});

  @override
  State<ManagementCong> createState() => _ManagementCongState();
}

class _ManagementCongState extends State<ManagementCong> {
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
            'Management for Congenital & Secondary Glaucoma',
            style: TextStyle(
              fontSize: 22,
            ),
          )),
    );
  }
}
