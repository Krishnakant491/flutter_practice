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
        child: SizedBox(
          // decoration: BoxDecoration(color: Colors.purple),
          height: 80,
          width: 200,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: InkWell(
              child: Image.asset(
                "assets/images/click-here-button.png",
                fit: BoxFit.cover,
              ),
              onTap: () => print("Picture tapped"),
              onDoubleTap: () => print("Double tapped"),
            ),
          ),
        ),
      ),
    );
  }
}
