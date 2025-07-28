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
    var names = [
      "Krishna",
      "Anis",
      "Yash",
      "Anurag",
      "Naman",
      "Vishwanath",
      "Devanshu",
      "Piyush",
      "Prathmesh",
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Text(
            names[index],
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          );
        },
        itemCount: names.length,
        itemExtent: 50,
      ),
    );
  }
}
