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
        mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,   //will give equal space between widgets and border to start and end
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,  //First item at start, last at end, space between others
        // mainAxisAlignment: MainAxisAlignment.spaceAround,   //will give equal space between widgets but provide half space to start and end
        // mainAxisAlignment: MainAxisAlignment.end,           //widget will placed at the end
        children: <Text>[
          Text("A - ", style: TextStyle(color: Colors.deepPurple)),
          Text("B - ", style: TextStyle(color: Colors.deepPurple)),
          Text("C - ", style: TextStyle(color: Colors.deepPurple)),
          Text("D - ", style: TextStyle(color: Colors.deepPurple)),

          // Container( ... )   //will give an error because we declare Text widget to Row widget
        ],
      ),
    );
  }
}
