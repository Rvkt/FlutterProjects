import 'package:flutter/material.dart';

import '../utils/bottom_sheet_utils.dart';
import '../widgets/custom_bottom_navbar.dart';
import 'page1_screen.dart';
import 'page2_screen.dart';
import 'page3_screen.dart';
import 'page4_screen.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  // Define your pages or screens here.
  final List<Widget> _pages = [
    Page1(),
    Page2(),
    Page3(),
    Page4(), // Added Page4
  ];

  // Function to handle item selection in the custom bottom navigation bar.
  void _onItemTapped(int index) {
    if (index == 1) {
      openBottomSheet(context);
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Bottom Navbar'),
      ),
      body: Column(
        children: [
          Expanded(
            child: _pages[_selectedIndex],
          ),
          CustomBottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
          ),
        ],
      ),
    );
  }
}
