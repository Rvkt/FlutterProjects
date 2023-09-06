import 'package:bottom_navigation_bar/widgets/custom_bottom_navbar.dart';
import 'package:flutter/material.dart';

class OrganicScreen extends StatefulWidget {
  const OrganicScreen({super.key});

  @override
  State<OrganicScreen> createState() => _OrganicScreenState();
}

class _OrganicScreenState extends State<OrganicScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Organic'),
      ),
      body: const Center(
        child: Text(
          'Organic',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
