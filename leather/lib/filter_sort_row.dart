import 'package:flutter/material.dart';

class FilterSortRow extends StatelessWidget {
  const FilterSortRow({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      margin: const EdgeInsets.all(16.0),
      padding: const EdgeInsets.all(8),
      // height: screenHeight * 0.1,
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        border: Border.all(color: Colors.blue.shade50, width: 1),
        borderRadius: const BorderRadius.all(
          Radius.circular(50),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Row(
            children: [
              Icon(Icons.tune),
              Text(
                'Filter',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          SizedBox(
            width: screenWidth * 0.3
          ),
          const Row(
            children: [
              Icon(Icons.swap_vert),
              Text(
                'Sort by',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
