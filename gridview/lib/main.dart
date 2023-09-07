import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orangeAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var arrColors = [
      Colors.orange,
      Colors.grey,
      Colors.blue,
      Colors.pink,
      Colors.purpleAccent,
      Colors.green,
      Colors.brown,
      Colors.teal,
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(child: Text(widget.title)),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        padding: const EdgeInsets.all(16.0),
        mainAxisSpacing: 16.0,
        crossAxisSpacing: 16.0,
        children: [
          Container(
            color: arrColors[0],
          ),
          Container(
            color: arrColors[1],
          ),
          Container(
            color: arrColors[2],
          ),
          Container(
            color: arrColors[3],
          ),
          Container(
            color: arrColors[4],
          ),
          Container(
            color: arrColors[5],
          ),
          Container(
            color: arrColors[6],
          ),
          Container(
            color: arrColors[7],
          ),
          GridTile(
            header: Text('header'),
            child: Container(
              color: arrColors[6],
            ),
            footer: Text('footer'),
          )
        ],
      ),
    );
  }
}
