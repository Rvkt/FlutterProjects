import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  CustomBottomNavigationBar({
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildNavItem(0, Icons.home, 'Page 1'),
          _buildNavItem(1, Icons.business, 'Page 2'),
          _buildNavItem(2, Icons.school, 'Page 3'),
          _buildNavItem(3, Icons.star, 'Page 4'),
        ],
      ),
    );
  }

  Widget _buildNavItem(int index, IconData icon, String label) {
    final isSelected = index == currentIndex;
    final iconColor = isSelected ? Colors.blue.shade500 : Colors.black87;
    final labelColor = isSelected ? Colors.blue.shade500 : Colors.black87;

    return GestureDetector(
      onTap: () => onTap(index),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10),
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
