import 'package:flutter/material.dart';
import 'package:murious_appp/screen/home/home_bg.dart';
import 'package:murious_appp/screen/notification/notification.dart';

class NotificationUi extends StatelessWidget {
  const NotificationUi({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          FigmaToCodeApp(), // Background
          Positioned.fill(
            child: AppSetting(
                // notificationStatusCallback: (bool isEnabled) {},
                ),
          ),
        ],
      ),
    );
  }
}
