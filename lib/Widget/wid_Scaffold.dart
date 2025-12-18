import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: Center(
          child: Text('Hello Scaffold!'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('FAB pressed');
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
