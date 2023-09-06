import 'package:flutter/material.dart';
import 'package:sliver_app_bar/image_carousel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade100,
      body: CustomScrollView(
        slivers: [
          // Sliver app bar
          SliverAppBar(
            backgroundColor: Colors.deepPurple,
            foregroundColor: Colors.white,
            // leading: const Icon(Icons.menu),
            leading: IconButton(
              onPressed: () {
                Drawer(
                  child: Container(
                    color: Colors.indigo,
                    child: ListView(
                      children: const [
                        DrawerHeader(
                          child: Icon(
                            Icons.home,
                            size: 30,
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
              icon: const Icon(Icons.menu),
            ),
            actions: const [
              Icon(
                Icons.notifications,
                size: 20,
              ),
              SizedBox(width: 8),
              Icon(
                Icons.search,
                size: 20,
              ),
              SizedBox(width: 8),
              Icon(
                Icons.favorite,
                size: 20,
              ),
              SizedBox(width: 8),
              Icon(
                Icons.shopping_cart,
                size: 20,
              ),
              SizedBox(width: 8),
            ],
            title: const Text('Dashboard'),
            expandedHeight: MediaQuery.of(context).size.height * 0.2,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: const [0, 1],
                    colors: [
                      Colors.deepPurple,
                      Colors.deepPurple.shade50,
                    ],
                  ),
                ),
              ),
            ),
            floating: true,
            pinned: true,
            elevation: 1,
            shadowColor: Colors.deepPurple,
          ),

          // SliverItems are here
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  color: Colors.deepPurple.shade300,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  color: Colors.deepPurple.shade300,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  color: Colors.deepPurple.shade300,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  color: Colors.deepPurple.shade300,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
