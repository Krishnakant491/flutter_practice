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
        title: const Text('Container Widget'),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      // body: Container(
      //   height: 200,
      //   width: 200,
      //   color: Colors.blueGrey,
      //   child: Text(
      //     'COntainer > Text',
      //     style: TextStyle(
      //       fontSize: 18,
      //       color: Colors.red,
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      // ),
      body: Container(
        height: 200,
        width: 500,
        color: Colors.lightBlue,
        child: Center(
          child: Text(
            "Container > Center > Text",
            style: TextStyle(
              fontSize: 18,
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your action here
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
