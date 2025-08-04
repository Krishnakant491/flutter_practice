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
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(width: 70, height: 100, color: Colors.red),
          ),
          Container(width: 70, height: 100, color: Colors.green),
          Expanded(
            child: Container(width: 70, height: 100, color: Colors.yellow),
          ),
          Container(width: 70, height: 100, color: Colors.black),
          Expanded(
            child: Container(width: 70, height: 100, color: Colors.blue),
          ),
        ],
      ),
    );
  }
}
