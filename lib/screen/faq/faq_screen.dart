import 'package:flutter/material.dart';
import 'package:murious_appp/screen/profile/profile.dart';

class FAQPage extends StatefulWidget {
  const FAQPage({Key? key}) : super(key: key);

  @override
  State<FAQPage> createState() => _FAQPageState();
}

class _FAQPageState extends State<FAQPage> {
  // Define a map to store questions and their respective answer lists
  final Map<String, List<String>> _faqs = {
    "What is this app about?": [
      "This is a simple FAQ app to make the app useful",
    ],
    "How do I use this app?": [
      "It's easy! Just tap on the question to see the answer options in a dropdown menu. Select the answer that best suits your needs.",
    ],
    "Can I contribute to this app?": [
      "This is a demonstration app and not intended for public contributions. However, you can learn from its code and build your own FAQ app!",
    ],
  };

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
      body: Stack(children: [
        Padding(
          padding: EdgeInsets.fromLTRB(screenWidth * 0.1, 10, 0, 10),
          child: Text(
            'FAQs',
            style: TextStyle(
              color: Colors.white,
              fontSize: screenWidth * 0.13,
              fontFamily: 'Murious',
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(
            screenWidth * 0.02,
            screenWidth * 0.2,
            screenWidth * 0.00,
            screenWidth * 0.00,
          ),
          child: ListView.builder(
            itemCount: _faqs.length,
            itemBuilder: (context, index) {
              final question = _faqs.keys.elementAt(index);
              final answers = _faqs[question]!;
              return ExpansionTile(
                title: Text(
                  question,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: screenWidth * 0.058,
                    fontFamily: 'Murious',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                children: answers.map((answer) {
                  return Padding(
                    padding: EdgeInsets.fromLTRB(
                      screenWidth * 0.05,
                      0,
                      screenWidth * 0.05,
                      screenWidth * 0.05,
                    ),
                    child: Text(
                      answer,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: screenWidth * 0.05,
                        fontFamily: 'Murious',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  );
                }).toList(),
              );
            },
          ),
        ),
      ]),
    );
  }
}
