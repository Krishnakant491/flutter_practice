import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row and Columns',
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
      body: Container(
        height: 300,
        width: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Data[1][1]"),
                Text("Data[1][2]"),
                Column(
                  children: [
                    Row(
                      children: [
                        Text("Data[1][3][1][1]"),
                        SizedBox(width: 10),
                        Text("Data[1][3][1][2]"),
                      ],
                    ),
                    Row(
                      children: [
                        Text("Data[1][3][2][1]"),
                        SizedBox(width: 10),
                        Text("Data[1][3][2][2]"),
                      ],
                    ),
                  ],
                ),
                Text("Data[1][3]"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Data[2][1]"),
                Text("Data[2][2]"),
                Text("Data[2][3]"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Data[3][1]"),
                Text("Data[3][2]"),
                Text("Data[3][3]"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Text("Data[4][1][1][1]"),
                        SizedBox(width: 10),
                        Column(children: [Text("Hello"), Text("World")]),
                      ],
                    ),
                    Row(
                      children: [
                        Text("Data[4][1][2][1]"),
                        SizedBox(width: 10),
                        Text("Data[4][1][2][2]"),
                      ],
                    ),
                  ],
                ),
                Text("Data[4][2]"),
                Text("Data[4][3]"),
                Text("Data[4][4]"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
