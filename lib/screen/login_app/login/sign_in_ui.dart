import 'package:flutter/material.dart';
import 'package:murious_appp/screen/login_app/screens/login_screen/login_screen.dart';

class SignInUi extends StatelessWidget {
  const SignInUi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor:
            Colors.transparent, // Set scaffold background to transparent
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: 'Montserrat',
            ),
      ),
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(0, 49, 49, 50),
                Color.fromARGB(255, 63, 5, 96),
              ],
            ),
          ),
          child: const LoginScreen(),
        ),
      ),
    );
  }
}
