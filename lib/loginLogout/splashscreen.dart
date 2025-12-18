import 'dart:async';
import 'package:practice_flutter/services/shared_preferences_service.dart';
import 'routes.dart';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final PrefService _prefService = PrefService();

  @override
  void initState() {
    _prefService.readCache("password").then((value) {
      if (value != null) {
        return Timer(Duration(seconds: 2), () {
          Navigator.of(context).pushNamed(HomeRoute);
        });
      } else {
        return Timer(Duration(seconds: 2), () {
          Navigator.of(context).pushNamed(LoginRoute);
        });
      }
    });

    // TODO: implement initState
    super.initState();

    // Timer(Duration(seconds: 5), () {
    //   Navigator.pushReplacement(
    //     context,
    //     MaterialPageRoute(builder: (context) => LoginScreen()),
    //   );
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue.shade300,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Container(child: Image.asset('assets/images/flutter3dLogo.png')),
              Text("🙏", style: TextStyle(fontSize: 100, color: Colors.blue)),
              SizedBox(height: 20),
              Text(
                "Welcome to this project",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
