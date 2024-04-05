import 'package:flutter/material.dart';

class ForEyeInjury extends StatefulWidget {
  const ForEyeInjury({super.key});

  @override
  State<ForEyeInjury> createState() => _ForEyeInjuryState();
}

class _ForEyeInjuryState extends State<ForEyeInjury> {
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
            'For Eye Injury',
            style: TextStyle(
              fontSize: 22,
            ),
          )),
    );
  }
}
