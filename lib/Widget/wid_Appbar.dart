import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppBar Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Flutter AppBar'),
          backgroundColor: Colors.blue,
          centerTitle: true,
          elevation: 4,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              print('Menu tapped');
            },
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print('Search tapped');
              },
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
                print('More tapped');
              },
            ),
          ],
        ),
        body: Center(child: Text('Hello, Flutter!')),
      ),
    );
  }
}
