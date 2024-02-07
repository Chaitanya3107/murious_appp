import 'package:flutter/material.dart';
import 'package:murious_appp/screen/feedback/rating.dart';
import 'package:murious_appp/screen/profile/profile.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({Key? key}) : super(key: key);

  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

late String feedback;

class _FeedbackScreenState extends State<FeedbackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        toolbarHeight: 80,
        leading: IconButton(
          padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
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
          iconSize: 45,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(40, 10, 0, 8),
              child: Text(
                'Feedback',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 580,
                  decoration: ShapeDecoration(
                    color: Colors.black.withOpacity(0.2),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 2.9, color: Colors.white),
                      borderRadius: BorderRadius.circular(22),
                    ),
                  ),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 15),
                        child: Text(
                          'Send feedback',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      Container(
                        width: 250,
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
                      const Padding(
                        padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Center(
                          child: Text(
                            'Tell us how your experience\nwas and leave a comment',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(20),
                        child: RatingFeedback(),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                        child: Column(
                          children: [
                            const SizedBox(height: 20),
                            TextFormField(
                              onChanged: (val) {
                                // Update the corresponding controller value
                                setState(() {
                                  feedback = val;
                                });
                              },
                              decoration: InputDecoration(
                                hintText: 'Leave a comment',
                                hintStyle: const TextStyle(
                                    color: Colors.white), // Set hint text color
                                fillColor: Colors.black
                                    .withOpacity(0.2), // Set background color
                                filled: true,
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white, // Set border color
                                    width: 2.0, // Set border width
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(22)),
                                ),
                              ),
                              style: const TextStyle(
                                  color: Colors.white), // Set text color
                              maxLines: 10,
                            ),
                            const SizedBox(height: 40),
                            ElevatedButton(
                              onPressed: () {
                                // Handle form submission here
                                // Assuming you have an instance of FirebaseService
                                // FirebaseService()
                                //     .sendFeedback(ratingApp, feedback);
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  Colors.white.withOpacity(
                                      1), // Set button background color
                                ),
                              ),
                              child: const Text(
                                'Submit',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
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
