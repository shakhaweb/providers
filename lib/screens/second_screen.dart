import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Второй экран"),
      ),
      body: const Center(
        child: Text("Привет, это второй экран!"),
      ),
    );
  }
}