import 'package:flutter/material.dart';

class LeatherScreen extends StatefulWidget {
  const LeatherScreen({super.key});

  @override
  State<LeatherScreen> createState() => _LeatherScreenState();
}

class _LeatherScreenState extends State<LeatherScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Leather'),
      ),
      body: const Center(
        child: Text(
          'Leather',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
