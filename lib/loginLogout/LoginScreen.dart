import 'package:flutter/material.dart';
import 'package:practice_flutter/loginLogout/routes.dart';
import 'package:practice_flutter/services/shared_preferences_service.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final PrefService _prefService = PrefService();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  border: new OutlineInputBorder(),
                  hintText: "Enter Password",
                ),
              ),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  border: new OutlineInputBorder(),
                  hintText: "Enter Password",
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text("Login"),
                onPressed: () async {
                  _prefService
                      .createCache(passwordController.text)
                      .whenComplete(() {
                        if (emailController.text.isNotEmpty &&
                            passwordController.text.isNotEmpty) {
                          Navigator.of(context).pushReplacementNamed(HomeRoute);
                        }
                      });

                  // if (emailController.text.isNotEmpty &&
                  //     passwordController.text.isNotEmpty) {
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => HomePage()),
                  //   );
                  // }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
