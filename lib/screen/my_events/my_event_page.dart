import 'package:flutter/material.dart';
import 'package:murious_appp/models/user.dart';
import 'package:murious_appp/screen/my_events/registered_events.dart';
import 'package:provider/provider.dart';

class MyEvent extends StatefulWidget {
  const MyEvent({Key? key});

  @override
  State<MyEvent> createState() => _MyEventState();
}

class _MyEventState extends State<MyEvent> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final user = Provider.of<UserObj?>(context);
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        toolbarHeight: screenWidth * 0.2,
        actions: [
          Padding(
            padding: EdgeInsets.fromLTRB(
                0, screenWidth * 0.025, screenWidth * 0.085, 0),
            child: Image.asset(
              'assets/images/murious logo.png',
              width: screenWidth * 0.12,
              height: screenWidth * 0.12,
            ),
          ),
        ],
        title: Padding(
          padding: EdgeInsets.fromLTRB(
              screenWidth * 0.02, screenWidth * 0.025, 0, 0),
          child: Text(
            'My Events',
            style: TextStyle(
              fontSize: screenWidth * 0.12,
              fontWeight: FontWeight.bold,
              fontFamily: 'Murious',
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: RegisteredEvents(uid: user!.uid),
    );
    // );
  }
}
