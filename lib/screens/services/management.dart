import 'package:flutter/material.dart';

class ManagementComplication extends StatefulWidget {
  const ManagementComplication({super.key});

  @override
  State<ManagementComplication> createState() => _ManagementComplicationState();
}

class _ManagementComplicationState extends State<ManagementComplication> {
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
            'Management of Complication of Cataract Surgery',
            style: TextStyle(
              fontSize: 22,
            ),
          )),
    );
  }
}
