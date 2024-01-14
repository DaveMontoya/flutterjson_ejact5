import 'package:flutter/material.dart';

class Screen02 extends StatelessWidget {
  const Screen02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Screen 02 Title")
        ),
        body: const Center(
            child: Text("Información ventana 2")
        )
    );
  }
}