import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  Widget soundTile ({required Color tileColor})=> TextButton(
      onPressed: () {
      },
      child: Container(
        height: MediaQuery.of(context).size.height / 7,
        color: tileColor,
      ),
    );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black87,
        body: Column(
          children: [
            Expanded(child: soundTile(tileColor: Colors.red)),
            Expanded(child: soundTile(tileColor: Colors.orange)),
            Expanded(child: soundTile(tileColor: Colors.yellow)),
            Expanded(child: soundTile(tileColor: Colors.green)),
            Expanded(child: soundTile(tileColor: Colors.teal)),
            Expanded(child: soundTile(tileColor: Colors.blue)),
            Expanded(child: soundTile(tileColor: Colors.purple)),
          ],
        ),
      ),
    );
  }
}
