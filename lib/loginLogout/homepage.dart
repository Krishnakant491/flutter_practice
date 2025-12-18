import 'package:flutter/material.dart';
// import 'package:practice_flutter/loginLogout/LoginScreen.dart';
import 'package:practice_flutter/loginLogout/routes.dart';
import 'package:practice_flutter/services/shared_preferences_service.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final PrefService _prefService = PrefService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: Column(
          children: [
            Text("Home"),
            ElevatedButton(
              child: Text("Logout"),
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => LoginScreen()),
                // );
                _prefService.removeCache("password").whenComplete(() {
                  Navigator.of(context).pushReplacementNamed(LoginRoute);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
