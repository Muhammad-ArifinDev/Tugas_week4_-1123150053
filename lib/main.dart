import 'package:flutter/material.dart';

void main() {
  runApp(const Latihan1App());
}

class Latihan1App extends StatelessWidget {
  const Latihan1App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan 1',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Latihan 1 - AppBar dan Body"),
          backgroundColor: Colors.blueAccent,
        ),
        body: const Center(
          child: Text(
            "Muhammad Arifin",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
