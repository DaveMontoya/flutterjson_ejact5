import 'package:flutter/material.dart';

class Screen03 extends StatelessWidget {
  const Screen03({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Screen 03 Title")
        ),
        body: const Center(
            child: Text("Información ventana 3")
        )
    );
  }
}