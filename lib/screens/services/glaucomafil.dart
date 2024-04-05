import 'package:flutter/material.dart';

class GlaucomaFilter extends StatefulWidget {
  const GlaucomaFilter({super.key});

  @override
  State<GlaucomaFilter> createState() => _GlaucomaFilterState();
}

class _GlaucomaFilterState extends State<GlaucomaFilter> {
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
            'Glaucoma Filteration Surgery',
            style: TextStyle(
              fontSize: 22,
            ),
          )),
    );
  }
}
