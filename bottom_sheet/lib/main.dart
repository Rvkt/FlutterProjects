import 'package:bottom_sheet/custom_bottom_navbar.dart';
import 'package:flutter/material.dart';

/// Flutter code sample for [showModalBottomSheet].

void main() => runApp(const BottomSheetApp());

class BottomSheetApp extends StatelessWidget {
  const BottomSheetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Bottom Sheet Sample'),
        ),
        bottomNavigationBar: const CustomBottomNavbar(),
      ),
    );
  }
}
