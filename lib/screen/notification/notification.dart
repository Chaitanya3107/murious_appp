import 'package:flutter/material.dart';
import 'package:murious_appp/screen/profile/profile.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppSetting extends StatefulWidget {
  const AppSetting({Key? key});

  @override
  State<AppSetting> createState() => _AppSettingState();
}

class _AppSettingState extends State<AppSetting> {
  late SharedPreferences _prefs;
  bool _notificationsEnabled = true; // Track notification status

  @override
  void initState() {
    super.initState();
    _loadSettings();
  }

  // Load notification settings from SharedPreferences
  Future<void> _loadSettings() async {
    _prefs = await SharedPreferences.getInstance();
    setState(() {
      _notificationsEnabled = _prefs.getBool('notificationsEnabled') ?? true;
    });
  }

  // Save notification settings to SharedPreferences
  Future<void> _saveSettings() async {
    await _prefs.setBool('notificationsEnabled', _notificationsEnabled);
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        toolbarHeight: 80,
        leading: IconButton(
          padding: EdgeInsets.fromLTRB(screenWidth * 0.05, 10, 0, 0),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) => const ProfilePage(),
              ),
            );
          },
          color: Colors.white,
          iconSize: screenWidth * 0.11,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(screenWidth * 0.1, 10, 0, 10),
              child: Text(
                'App Setting',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenWidth * 0.13,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                screenWidth * 0.02,
                screenWidth * 0.05,
                screenWidth * 0.02,
                screenWidth * 0.03,
              ),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _notificationsEnabled = !_notificationsEnabled;
                    _saveSettings(); // Save notification settings
                  });
                },
                child: Container(
                  width: double.infinity,
                  height: screenWidth * 0.2,
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(-0.00, -1.00),
                      end: Alignment(0, 1),
                      colors: [Color(0xFF3E0858), Color(0xFF38022C)],
                    ),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          width: screenWidth * 0.005, color: Colors.white),
                      borderRadius: BorderRadius.circular(screenWidth * 0.06),
                    ),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          "Notifications",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: screenWidth * 0.08,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _notificationsEnabled = !_notificationsEnabled;
                            _saveSettings(); // Save notification settings
                          });
                        },
                        child: Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: Icon(
                            color: Colors.white,
                            size: screenWidth * 0.09,
                            _notificationsEnabled
                                ? Icons.check_box_outlined
                                : Icons.check_box_outline_blank,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
