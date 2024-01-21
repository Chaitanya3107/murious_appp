import 'package:flutter/material.dart';
import 'package:murious_appp/models/user.dart';
import 'package:murious_appp/services/auth.dart';
import 'package:murious_appp/app_colors.dart';

class Home extends StatelessWidget {
  // home constructor which accepts userid i.e uid
  Home({
    Key? key,
    required this.user,
  }) : super(key: key);

  final AuthService _auth = AuthService();
  // passing uid from wrapper to home screen to display things
  final UserObj user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.homeLightBackground,
      appBar: AppBar(
        backgroundColor: AppColors.homeAppBarBackground,
        elevation: 0.0,
        title: const Text('Murious App'),
        // actions are button appear at top right of app bar
        actions: [
          IconButton(
              onPressed: () async {
                // Access AuthService instance(_auth) to call signOutGoogle
                await _auth.signOutGoogle();
              },
              color: AppColors.homeIconColor,
              icon: const Icon(Icons.person))
        ],
      ),
    );
  }
}
