import 'package:flutter/material.dart';

import '../screens/gifts_tag_screen.dart';
import '../screens/leather_screen.dart';
import '../screens/organic_screen.dart';

void openBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        color: Colors.deepPurple.shade100,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  const Text(
                    'Select Category',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      // Close the bottom sheet when the close icon is pressed
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.eco), // Use an appropriate icon for "Organic"
              title: const Text('Organic'),
              onTap: () {
                Navigator.of(context).pop(); // Close the bottom sheet
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const OrganicScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.eco), // Use an appropriate icon for "Organic"
              title: const Text('Leather'),
              onTap: () {
                Navigator.of(context).pop(); // Close the bottom sheet
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const LeatherScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.eco), // Use an appropriate icon for "Organic"
              title: const Text('Gifts Tag'),
              onTap: () {
                Navigator.of(context).pop(); // Close the bottom sheet
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const GiftsTagScreenScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      );
    },
  );
}
