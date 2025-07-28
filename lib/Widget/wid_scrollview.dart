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
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        height: 200,
                        width: 250,
                        color: Colors.blueGrey,
                        margin: EdgeInsets.only(bottom: 20),
                      ),
                      SizedBox(width: 10),
                      Container(
                        height: 250,
                        width: 250,
                        color: Colors.redAccent,
                        margin: EdgeInsets.only(bottom: 20),
                      ),
                      SizedBox(width: 10),
                      Container(
                        height: 200,
                        width: 250,
                        color: Colors.greenAccent,
                        margin: EdgeInsets.only(bottom: 20),
                      ),
                      SizedBox(width: 10),
                      Container(
                        height: 200,
                        width: 200,
                        color: Colors.yellowAccent,
                        margin: EdgeInsets.only(bottom: 20),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 200,
                // width: 200,
                color: Colors.cyan,
                margin: EdgeInsets.only(bottom: 20),
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.pinkAccent,
                margin: EdgeInsets.only(bottom: 20),
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.purpleAccent,
                margin: EdgeInsets.only(bottom: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
