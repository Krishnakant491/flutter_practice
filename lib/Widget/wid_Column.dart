import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App Title',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Column(
        children: [
          Text("child 1"),
          Text("child 2"),
          TextButton(
            child: Text("Text Button", style: TextStyle(color: Colors.pink)),
            onPressed: () => print("Button pressed"),
          ),
          Container(child: Text("Inside Container")),
          Expanded(
            child: ListView(
              children: [
                Text("List Item 1"),
                Text("List Item 2"),
                Text("List Item 3"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
