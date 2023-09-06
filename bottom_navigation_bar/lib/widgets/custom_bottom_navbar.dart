import 'package:flutter/material.dart';

// Define a custom Flutter widget called CustomBottomNavigationBar
class CustomBottomNavigationBar extends StatelessWidget {
  final int? currentIndex; // The currently selected index
  final Function(int)? onTap; // Callback function when an item is tapped

  // Constructor for the CustomBottomNavigationBar widget
  const CustomBottomNavigationBar({
    Key? key,
    this.currentIndex,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Build method for the CustomBottomNavigationBar widget
    return Container(
      color: Colors.white, // Background color of the navigation bar
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // A row of navigation items with even spacing
        children: <Widget>[
          _buildNavItem(0, Icons.home, 'Home'), // Home navigation item
          _buildNavItem(1, Icons.business, 'Category'), // Category navigation item
          _buildNavItem(2, Icons.school, 'My Orders'), // My Orders navigation item
          _buildNavItem(3, Icons.star, 'Account'), // Account navigation item
        ],
      ),
    );
  }

  // Helper method to build individual navigation items
  Widget _buildNavItem(int index, IconData icon, String label) {
    // Determine if this item is currently selected
    final isSelected = index == currentIndex;
    // Set the color of the icon and label based on selection
    final iconColor = isSelected ? Colors.blue.shade500 : Colors.black87;
    final labelColor = isSelected ? Colors.blue.shade500 : Colors.black87;

    return GestureDetector(
      onTap: () => onTap!(index), // Invoke the callback function when tapped
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.transparent, // Transparent background
          borderRadius: BorderRadius.circular(10), // Rounded corners
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(
              icon,
              color: iconColor,
              size: 30,
            ),
            Text(
              label,
              style: TextStyle(
                color: labelColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
