import 'package:flutter/material.dart';
import 'package:murious_appp/screen/login_app/login/sign_in_ui.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({super.key});

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  @override
  Widget build(BuildContext context) {
    return const SignInUi();
  }
}
