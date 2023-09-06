import 'package:bottom_navigation_bar/screens/account_screen.dart';
import 'package:bottom_navigation_bar/screens/category_screen.dart';
import 'package:bottom_navigation_bar/screens/home_screen.dart';
import 'package:bottom_navigation_bar/screens/my_orders_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_bottom_navbar.dart'; // Import the custom bottom navigation bar widget
import 'bottom_sheet_utils.dart';

// Define a Flutter widget called CommonLayoutWidget
class CommonLayoutWidget extends StatefulWidget {
  const CommonLayoutWidget({Key? key});

  @override
  State<CommonLayoutWidget> createState() => _CommonLayoutWidgetState();
}

class _CommonLayoutWidgetState extends State<CommonLayoutWidget> {
  int _selectedIndex = 0; // Keeps track of the selected navigation item

  // Define your pages or screens here, each as a widget
  final List<Widget> _pages = [
    const HomeScreen(),
    const CategoryScreen(),
    const MyOrdersScreen(),
    const AccountScreen(),
  ];

  // Function to handle item selection in the custom bottom navigation bar.
  void _onItemTapped(int index) {
    if (index == 1) {
      openBottomSheet(context); // Open a bottom sheet for the second item
    } else {
      setState(() {
        _selectedIndex = index; // Update the selected index for navigation
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: _pages[_selectedIndex], // Display the selected page
          ),
          CustomBottomNavigationBar(
            currentIndex: _selectedIndex, // Pass the selected index to the custom navigation bar
            onTap: _onItemTapped, // Pass the callback function for item tap
          ),

        ],
      ),
    );
  }
}
