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
      body: ListView(
        scrollDirection: Axis.vertical, // Set scroll direction to vertical
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(screenWidth * 0.11, 10, 0, 4),
            child: Text(
              'Feedback',
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
            // padding: EdgeInsets.all(screenWidth * 0.056),
            padding: EdgeInsets.fromLTRB(screenWidth * 0.056,
                screenWidth * 0.076, screenWidth * 0.056, screenWidth * 0.056),
            child: Center(
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: screenWidth * 1.32,
                decoration: ShapeDecoration(
                  color: Colors.black.withOpacity(0.2),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                        width: screenWidth * 0.005, color: Colors.white),
                    borderRadius: BorderRadius.circular(screenWidth * 0.061),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                          0, screenWidth * 0.034, 0, screenWidth * 0.026),
                      child: Text(
                        'Send feedback',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenWidth * 0.048,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                    Container(
                      width: screenWidth * 0.500,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: screenWidth * 0.003,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                          screenWidth * 0.027, screenWidth * 0.022, 0, 0),
                      child: Center(
                        child: Text(
                          'Tell us how your experience\nwas and leave a comment',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: screenWidth * 0.04,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(screenWidth * 0.044),
                      child: RatingFeedback(),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                          screenWidth * 0.032, 0, screenWidth * 0.032, 0),
                      child: Column(
                        children: [
                          SizedBox(height: screenWidth * 0.044),
                          TextFormField(
                            onChanged: (val) {
                              // Update the corresponding controller value
                              setState(() {
                                feedback = val;
                              });
                            },
                            decoration: InputDecoration(
                              hintText: 'Leave a comment',
                              hintStyle: TextStyle(color: Colors.white),
                              fillColor: Colors.black.withOpacity(0.2),
                              filled: true,
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: screenWidth * 0.008,
                                ),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(screenWidth * 0.061)),
                              ),
                            ),
                            style: TextStyle(color: Colors.white),
                            maxLines: 8,
                          ),
                          SizedBox(height: screenWidth * 0.058),
                          ElevatedButton(
                            onPressed: () {
                              // Handle form submission here
                              // Assuming you have an instance of FirebaseService
                              // FirebaseService().sendFeedback(ratingApp, feedback);
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.white.withOpacity(1),
                              ),
                            ),
                            child: Text(
                              'Submit',
                              style: TextStyle(
                                fontSize: screenWidth * 0.044,
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
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:murious_appp/screen/feedback/rating.dart';
// import 'package:murious_appp/screen/profile/profile.dart';

// class FeedbackScreen extends StatefulWidget {
//   const FeedbackScreen({Key? key}) : super(key: key);

//   @override
//   State<FeedbackScreen> createState() => _FeedbackScreenState();
// }

// late String feedback;

// class _FeedbackScreenState extends State<FeedbackScreen> {
//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;

//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.transparent,
//         appBar: AppBar(
//           toolbarHeight: 80,
//           leading: IconButton(
//             padding: EdgeInsets.fromLTRB(screenWidth * 0.05, 10, 0, 0),
//             icon: const Icon(
//               Icons.arrow_back,
//               color: Colors.white,
//             ),
//             onPressed: () {
//               Navigator.pop(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => const ProfilePage(),
//                 ),
//               );
//             },
//             color: Colors.white,
//             iconSize: screenWidth * 0.11,
//           ),
//           backgroundColor: Colors.transparent,
//           elevation: 0,
//         ),
//         resizeToAvoidBottomInset:
//             false, // Prevents resizing when keyboard appears
//         body: ListView(
//           scrollDirection: Axis.vertical,
//           children: [
//             Padding(
//               padding: EdgeInsets.fromLTRB(screenWidth * 0.11, 10, 0, 4),
//               child: Text(
//                 'Feedback',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: screenWidth * 0.13,
//                   fontFamily: 'Poppins',
//                   fontWeight: FontWeight.w600,
//                   height: 0,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.fromLTRB(
//                   screenWidth * 0.056,
//                   screenWidth * 0.076,
//                   screenWidth * 0.056,
//                   screenWidth * 0.056),
//               child: Center(
//                 child: Container(
//                   alignment: Alignment.center,
//                   width: double.infinity,
//                   height: screenWidth * 1.32,
//                   decoration: ShapeDecoration(
//                     color: Colors.black.withOpacity(0.2),
//                     shape: RoundedRectangleBorder(
//                       side: BorderSide(
//                           width: screenWidth * 0.005, color: Colors.white),
//                       borderRadius: BorderRadius.circular(screenWidth * 0.061),
//                     ),
//                   ),
//                   child: Column(
//                     children: [
//                       Padding(
//                         padding: EdgeInsets.fromLTRB(
//                             0, screenWidth * 0.034, 0, screenWidth * 0.026),
//                         child: Text(
//                           'Send feedback',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: screenWidth * 0.048,
//                             fontFamily: 'Poppins',
//                             fontWeight: FontWeight.w400,
//                             height: 0,
//                           ),
//                         ),
//                       ),
//                       Container(
//                         width: screenWidth * 0.500,
//                         decoration: ShapeDecoration(
//                           shape: RoundedRectangleBorder(
//                             side: BorderSide(
//                               width: screenWidth * 0.003,
//                               strokeAlign: BorderSide.strokeAlignCenter,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.fromLTRB(
//                             screenWidth * 0.027, screenWidth * 0.022, 0, 0),
//                         child: Center(
//                           child: Text(
//                             'Tell us how your experience\nwas and leave a comment',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: screenWidth * 0.04,
//                               fontFamily: 'Poppins',
//                               fontWeight: FontWeight.w400,
//                               height: 0,
//                             ),
//                             textAlign: TextAlign.center,
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.all(screenWidth * 0.044),
//                         child: RatingFeedback(),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.fromLTRB(
//                             screenWidth * 0.032, 0, screenWidth * 0.032, 0),
//                         child: Column(
//                           children: [
//                             SizedBox(height: screenWidth * 0.044),
//                             TextFormField(
//                               onChanged: (val) {
//                                 setState(() {
//                                   feedback = val;
//                                 });
//                               },
//                               decoration: InputDecoration(
//                                 hintText: 'Leave a comment',
//                                 hintStyle: TextStyle(color: Colors.white),
//                                 fillColor: Colors.black.withOpacity(0.2),
//                                 filled: true,
//                                 border: OutlineInputBorder(
//                                   borderSide: BorderSide(
//                                     color: Colors.white,
//                                     width: screenWidth * 0.008,
//                                   ),
//                                   borderRadius: BorderRadius.all(
//                                       Radius.circular(screenWidth * 0.061)),
//                                 ),
//                               ),
//                               style: TextStyle(color: Colors.white),
//                               maxLines: 8,
//                             ),
//                             SizedBox(height: screenWidth * 0.058),
//                             ElevatedButton(
//                               onPressed: () {
//                                 // Handle form submission here
//                                 // Assuming you have an instance of FirebaseService
//                                 // FirebaseService().sendFeedback(ratingApp, feedback);
//                               },
//                               style: ButtonStyle(
//                                 backgroundColor:
//                                     MaterialStateProperty.all<Color>(
//                                   Colors.white.withOpacity(1),
//                                 ),
//                               ),
//                               child: Text(
//                                 'Submit',
//                                 style: TextStyle(
//                                   fontSize: screenWidth * 0.044,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
