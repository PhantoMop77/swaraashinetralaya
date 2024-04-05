import 'package:flutter/material.dart';

class IntravtrealInjections extends StatefulWidget {
  const IntravtrealInjections({super.key});

  @override
  State<IntravtrealInjections> createState() => _IntravtrealInjectionsState();
}

class _IntravtrealInjectionsState extends State<IntravtrealInjections> {
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
            'Intravtreal Injections',
            style: TextStyle(
              fontSize: 22,
            ),
          )),
    );
  }
}
