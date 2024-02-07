import 'package:flutter/material.dart';
import 'package:murious_appp/screen/contact/contact.dart';
import 'package:murious_appp/screen/feedback/feedback.dart';
import 'package:murious_appp/services/auth.dart';

class ProfiileContainer extends StatefulWidget {
  const ProfiileContainer({super.key});

  @override
  State<ProfiileContainer> createState() => _ProfiileContainerState();
}

final AuthService _auth = AuthService();

class _ProfiileContainerState extends State<ProfiileContainer> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        // padding: const EdgeInsets.all(20),
        padding: EdgeInsets.fromLTRB(20, 50, 20, 30),
        child: Column(
          children: [
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 55, vertical: 30),
                  child: Text(
                    'Settings',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
                IconButton(
                  padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
                  icon: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    // Add your onPressed logic here
                  },
                  color: Colors.white,
                  iconSize: 40,
                ),
              ],
            ),
            Container(
              width: 300,
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 55, vertical: 30),
                  child: Text(
                    'Feedback',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
                IconButton(
                  padding: const EdgeInsets.fromLTRB(70, 0, 0, 0),
                  icon: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FeedbackUi(),
                      ),
                    );
                  },
                  color: Colors.white,
                  iconSize: 40,
                ),
              ],
            ),
            Container(
              width: 300,
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 55, vertical: 30),
                  child: Text(
                    'Contact Us',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
                IconButton(
                  padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                  icon: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ContactUs(),
                      ),
                    );
                  },
                  color: Colors.white,
                  iconSize: 40,
                ),
              ],
            ),
            Container(
              width: 300,
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                IconButton(
                  padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                  icon: const Icon(
                    Icons.logout,
                    color: Colors.white,
                  ),
                  onPressed: () async {
                    await _auth.signOutGoogle();
                  },
                  color: Colors.white,
                  iconSize: 40,
                ),
                const Padding(
                  padding: EdgeInsets.all(40),
                  child: Text(
                    'Logout',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
