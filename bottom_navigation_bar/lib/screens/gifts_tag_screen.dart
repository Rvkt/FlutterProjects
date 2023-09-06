import 'package:flutter/material.dart';

class GiftsTagScreenScreen extends StatefulWidget {
  const GiftsTagScreenScreen({super.key});

  @override
  State<GiftsTagScreenScreen> createState() => _GiftsTagScreenScreenState();
}

class _GiftsTagScreenScreenState extends State<GiftsTagScreenScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('GiftsTagScreen'),
      ),
      body: const Center(
        child: Text(
          'GiftsTagScreen',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
