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

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.blue.shade100,
        child: Center(
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.only(
                topLeft: Radius.elliptical(90, 40),
              ),
              border: Border.symmetric(
                vertical: BorderSide(color: Colors.brown, width: 5),
              ),
              boxShadow: [
                BoxShadow(color: Colors.black, blurRadius: 15, spreadRadius: 7),
              ],
              // shape: BoxShape.circle,  //if you want to make it a circle then borderRadius doesnt make any sense
            ),
          ),
        ),
      ),
    );
  }
}
