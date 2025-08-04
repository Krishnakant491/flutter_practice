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
      body: Center(
        // child: Container(
        //   height: 200,
        //   width: 200,
        //   decoration: BoxDecoration(border: Border.all(color: Colors.red)),
        child: CircleAvatar(
          backgroundImage: NetworkImage(
            "https://pbs.twimg.com/profile_images/1836455390814539776/jObGDNw-_400x400.jpg",
          ),
          // radius: 90,
          minRadius: 50,
          maxRadius: 100,
          backgroundColor: Colors.green,
          child: Padding(
            padding: const EdgeInsets.only(top: 170),
            child: Text(
              "IronMan",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      // ),//container
    );
  }
}
