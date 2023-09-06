import 'package:flutter/material.dart';

import 'image_carousel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Leather Screen',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  // Sample image paths
  final List<String> imgList = [
    'assets/images/IMG01.png',
    'assets/images/IMG02.png',
    'assets/images/IMG03.png',
  ];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text('Leather'),
        backgroundColor: Colors.orange.shade100,
      ),
      drawer: const Drawer(),
      body: ListView(
        children: [
          const ImageCarousel(
            imgList: [
              'assets/images/IMG01.png',
              'assets/images/IMG02.png',
              'assets/images/IMG03.png',
            ],
          ),
          // const FilterSortRow(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              color: Colors.orange.shade50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      icon: const Icon(Icons.tune),
                      items: const [
                        DropdownMenuItem<String>(
                          value: 'filter1',
                          child: Text('Filter 1'),
                        ),
                        DropdownMenuItem<String>(
                          value: 'filter2',
                          child: Text('Filter 2'),
                        ),
                        // Add more filter options as needed
                      ],
                      onChanged: (value) {
                        // Handle filter change
                      },
                      hint: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Filter by'),
                      ),
                    ),
                  ),
                  DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      icon: const Icon(Icons.swap_vert),
                      items: const [
                        DropdownMenuItem<String>(
                          value: 'sort1',
                          child: Text('Sort by A-Z'),
                        ),
                        DropdownMenuItem<String>(
                          value: 'sort2',
                          child: Text('Sort by Z-A'),
                        ),
                        // Add more sorting options as needed
                      ],
                      onChanged: (value) {
                        // Handle sort change
                      },
                      hint: const Text('Sort by'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListView(
            shrinkWrap: true,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: Colors.orange.shade50,
                  child: const ListTile(
                    title: Padding(
                      padding: EdgeInsets.all(24.0),
                      child: Text(
                        'Product Card',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: Colors.orange.shade50,
                  child: const ListTile(
                    title: Padding(
                      padding: EdgeInsets.all(24.0),
                      child: Text(
                        'Product Card',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: Colors.orange.shade50,
                  child: const ListTile(
                    title: Padding(
                      padding: EdgeInsets.all(24.0),
                      child: Text(
                        'Product Card',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: Colors.orange.shade50,
                  child: const ListTile(
                    title: Padding(
                      padding: EdgeInsets.all(24.0),
                      child: Text(
                        'Product Card',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: Colors.orange.shade50,
                  child: const ListTile(
                    title: Padding(
                      padding: EdgeInsets.all(24.0),
                      child: Text(
                        'Product Card',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
