import 'package:flutter/material.dart';
import 'package:murious_appp/models/user.dart';
import 'package:murious_appp/screen/login_app/screens/login_screen/components/top_text.dart';
import 'package:murious_appp/services/auth.dart';

class Home extends StatelessWidget {
  // Home constructor which accepts user id, i.e., uid
  Home({
    Key? key,
    required this.user,
  }) : super(key: key);

  final AuthService _auth = AuthService();

  // Passing uid from wrapper to home screen to display things
  final UserObj user;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Positioned(
          top: 136,
          left: 24,
          child: TopText(),
        ),
        Center(
          child: ElevatedButton(
            onPressed: () async {
              await _auth.signOutGoogle();
            },
            child: const Text("Sign Out"),
          ),
        ),
        const Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(bottom: 50),
          ),
        ),
      ],
    );
  }
}
