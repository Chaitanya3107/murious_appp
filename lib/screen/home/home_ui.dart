import 'package:flutter/material.dart';
import 'package:murious_appp/models/user.dart';
import 'package:murious_appp/screen/home/home.dart';
import 'package:murious_appp/screen/home/home_bg.dart';

class HomeUi extends StatelessWidget {
  const HomeUi({
    Key? key,
    required this.user,
  }) : super(key: key);

  final UserObj user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   actions: [
      //     IconButton(
      //       onPressed: () async {
      //         await _auth.signOutGoogle();
      //       },
      //       color: const Color.fromARGB(255, 255, 255, 255),
      //       icon: const Icon(Icons.person),
      //     ),
      //   ],
      //   flexibleSpace: Container(
      //     decoration: const BoxDecoration(
      //       gradient: LinearGradient(
      //         begin: Alignment.topCenter,
      //         end: Alignment.bottomCenter,
      //         colors: [
      //           Color.fromARGB(255, 49, 49, 50),
      //           Color.fromARGB(255, 26, 4, 39),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
      body: Stack(
        children: [
          const FigmaToCodeApp(), // Background
          Home(user: user) // Content on top of the background
        ],
      ),

      // bottomNavigationBar: Navigation(user: user),
    );
  }
}
