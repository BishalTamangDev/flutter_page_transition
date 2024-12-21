import 'package:flutter/material.dart';

class Dummy extends StatelessWidget {
  const Dummy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dummy Screen"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text("Hello!"),
      ),
    );
  }
}
