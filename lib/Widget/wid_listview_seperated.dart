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
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(child: Text(names[index][0])),
            title: Text(names[index]),
            trailing: Icon(Icons.arrow_forward_ios),
          );
        },
        itemCount: names.length,
        separatorBuilder: (context, index) {
          return Divider(height: 40, thickness: 1, color: Colors.red);
        },
      ),
    );
  }
}
