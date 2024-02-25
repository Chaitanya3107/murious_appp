// import 'dart:io';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:file_picker/file_picker.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:murious_appp/services/auth.dart';

// class Upload extends StatefulWidget {
//   const Upload({super.key, required this.eventName});
//   final String eventName;

//   @override
//   State<Upload> createState() => _UploadState();
// }

// final String? uid = AuthService().getCurrentUid();

// class _UploadState extends State<Upload> {
//   PlatformFile? pickedFile;
//   UploadTask? uploadTask; // Remove the late keyword
//   late final String eventName;

//   // Push download URL in Firebase database
//   Future<void> uploadDownloadLink(String downloadUrl, String eventName) async {
//     try {
//       await FirebaseFirestore.instance
//           .collection('registeredEvents')
//           .doc(uid)
//           .update({'$eventName,DownloadUrl': downloadUrl});

//       print('Uploaded successfully');
//     } catch (e) {
//       print('Error sending feedback: $e');
//     }
//   }

//   Future<void> uploadFile(String uid, String eventName) async {
//     // Check if a file is picked
//     if (pickedFile == null) {
//       print('No file selected');
//       return;
//     }

//     // Convert picked file to file object
//     final path = 'Murious_files/${pickedFile!.name}';
//     final file = File(pickedFile!.path!);
//     final ref = FirebaseStorage.instance.ref().child(path);

//     setState(() {
//       // Assign uploadTask with the upload operation
//       uploadTask = ref.putFile(file);
//     });

//     try {
//       // Wait for the upload to complete
//       final snapshot = await uploadTask!;
//       final urlDownload = await snapshot.ref.getDownloadURL();
//       uploadDownloadLink(urlDownload, eventName);
//       print('Upload completed successfully: $urlDownload');
//     } catch (e) {
//       print('Error uploading file: $e');
//     }
//   }

//   Future<void> selectFile() async {
//     final result = await FilePicker.platform.pickFiles();
//     if (result == null) return;
//     setState(() {
//       pickedFile = result.files.first;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;

//     late Widget centreWidget;

//     if (widget.eventName == '7 Days, 7 Designs') {
//       centreWidget = Center(
//         child: Padding(
//           padding: EdgeInsets.fromLTRB(
//             screenWidth * 0.00,
//             screenWidth * 0.1,
//             screenWidth * 0.00,
//             screenWidth * 0.00,
//           ),
//           child: Column(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   ElevatedButton(
//                     onPressed: () async {
//                       selectFile();
//                     },
//                     child: SizedBox(
//                       width: screenWidth * 0.25,
//                       child: const Text(
//                         "Select File",
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           backgroundColor: Colors.transparent,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 20,
//                           fontFamily: 'Murious',
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(width: screenWidth * 0.05),
//                   ElevatedButton(
//                     onPressed: () async {
//                       uploadFile(
//                           uid!, widget.eventName); // Pass widget.eventName
//                     },
//                     child: SizedBox(
//                       width: screenWidth * 0.25,
//                       child: const Text(
//                         "Upload",
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           backgroundColor: Colors.transparent,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 20,
//                           fontFamily: 'Murious',
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: screenWidth * 0.08,
//               ),
//               if (pickedFile != null)
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Center(
//                       child: Text(
//                         'Selected File:',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: screenWidth * 0.05,
//                           fontFamily: 'Murious',
//                           fontWeight: FontWeight.w400,
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Center(
//                       child: Text(
//                         pickedFile!.name,
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: screenWidth * 0.05,
//                           fontFamily: 'Murious',
//                           fontWeight: FontWeight.w400,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               SizedBox(
//                 height: screenWidth * 0.08,
//               ),
//               buildProgess(screenWidth),
//             ],
//           ),
//         ),
//       );
//     } else if (widget.eventName == '7 Days, 7 Photos') {
//       centreWidget = Center(
//         child: Padding(
//           padding: EdgeInsets.fromLTRB(
//             screenWidth * 0.00,
//             screenWidth * 0.1,
//             screenWidth * 0.00,
//             screenWidth * 0.00,
//           ),
//           child: Column(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   ElevatedButton(
//                     onPressed: () async {
//                       selectFile();
//                     },
//                     child: SizedBox(
//                       width: screenWidth * 0.25,
//                       child: const Text(
//                         "Select File",
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           backgroundColor: Colors.transparent,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 20,
//                           fontFamily: 'Murious',
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(width: screenWidth * 0.05),
//                   ElevatedButton(
//                     onPressed: () async {
//                       uploadFile(
//                           uid!, widget.eventName); // Pass widget.eventName
//                     },
//                     child: SizedBox(
//                       width: screenWidth * 0.25,
//                       child: const Text(
//                         "Upload",
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           backgroundColor: Colors.transparent,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 20,
//                           fontFamily: 'Murious',
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: screenWidth * 0.08,
//               ),
//               if (pickedFile != null)
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Center(
//                       child: Text(
//                         'Selected File:',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: screenWidth * 0.05,
//                           fontFamily: 'Murious',
//                           fontWeight: FontWeight.w400,
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Center(
//                       child: Text(
//                         pickedFile!.name,
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: screenWidth * 0.05,
//                           fontFamily: 'Murious',
//                           fontWeight: FontWeight.w400,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               SizedBox(
//                 height: screenWidth * 0.08,
//               ),
//               buildProgess(screenWidth),
//             ],
//           ),
//         ),
//       );
//     } else if (widget.eventName == 'Picture Perfect') {
//       centreWidget = Center(
//         child: Padding(
//           padding: EdgeInsets.fromLTRB(
//             screenWidth * 0.00,
//             screenWidth * 0.1,
//             screenWidth * 0.00,
//             screenWidth * 0.00,
//           ),
//           child: Column(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   ElevatedButton(
//                     onPressed: () async {
//                       selectFile();
//                     },
//                     child: SizedBox(
//                       width: screenWidth * 0.25,
//                       child: const Text(
//                         "Select File",
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           backgroundColor: Colors.transparent,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 20,
//                           fontFamily: 'Murious',
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(width: screenWidth * 0.05),
//                   ElevatedButton(
//                     onPressed: () async {
//                       uploadFile(
//                           uid!, widget.eventName); // Pass widget.eventName
//                     },
//                     child: SizedBox(
//                       width: screenWidth * 0.25,
//                       child: const Text(
//                         "Upload",
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           backgroundColor: Colors.transparent,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 20,
//                           fontFamily: 'Murious',
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: screenWidth * 0.08,
//               ),
//               if (pickedFile != null)
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Center(
//                       child: Text(
//                         'Selected File:',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: screenWidth * 0.05,
//                           fontFamily: 'Murious',
//                           fontWeight: FontWeight.w400,
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Center(
//                       child: Text(
//                         pickedFile!.name,
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: screenWidth * 0.05,
//                           fontFamily: 'Murious',
//                           fontWeight: FontWeight.w400,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               SizedBox(
//                 height: screenWidth * 0.08,
//               ),
//               buildProgess(screenWidth),
//             ],
//           ),
//         ),
//       );
//     } else if (widget.eventName == 'Frame by Frame') {
//       centreWidget = Center(
//         child: Padding(
//           padding: EdgeInsets.fromLTRB(
//             screenWidth * 0.00,
//             screenWidth * 0.1,
//             screenWidth * 0.00,
//             screenWidth * 0.00,
//           ),
//           child: Column(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   ElevatedButton(
//                     onPressed: () async {
//                       selectFile();
//                     },
//                     child: SizedBox(
//                       width: screenWidth * 0.25,
//                       child: const Text(
//                         "Select File",
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           backgroundColor: Colors.transparent,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 20,
//                           fontFamily: 'Murious',
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(width: screenWidth * 0.05),
//                   ElevatedButton(
//                     onPressed: () async {
//                       uploadFile(
//                           uid!, widget.eventName); // Pass widget.eventName
//                     },
//                     child: SizedBox(
//                       width: screenWidth * 0.25,
//                       child: const Text(
//                         "Upload",
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           backgroundColor: Colors.transparent,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 20,
//                           fontFamily: 'Murious',
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: screenWidth * 0.08,
//               ),
//               if (pickedFile != null)
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Center(
//                       child: Text(
//                         'Selected File:',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: screenWidth * 0.05,
//                           fontFamily: 'Murious',
//                           fontWeight: FontWeight.w400,
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Center(
//                       child: Text(
//                         pickedFile!.name,
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: screenWidth * 0.05,
//                           fontFamily: 'Murious',
//                           fontWeight: FontWeight.w400,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               SizedBox(
//                 height: screenWidth * 0.08,
//               ),
//               buildProgess(screenWidth),
//             ],
//           ),
//         ),
//       );
//     }

//     return centreWidget;
//   }

//   Widget buildProgess(double screenWidth) => StreamBuilder<TaskSnapshot>(
//         stream: uploadTask?.snapshotEvents,
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             final data = snapshot.data!;
//             double progress = data.bytesTransferred / data.totalBytes;
//             return SizedBox(
//               height: 50,
//               child: Stack(
//                 fit: StackFit.expand,
//                 children: [
//                   LinearProgressIndicator(
//                     borderRadius: BorderRadius.circular(screenWidth * 0.04),
//                     value: progress,
//                     backgroundColor: Colors.grey,
//                     color: Color.fromARGB(98, 79, 7, 121).withOpacity(1),
//                   ),
//                   Center(
//                     child: Text(
//                       '${(100 * progress).roundToDouble()}%',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: screenWidth * 0.05,
//                         fontFamily: 'Murious',
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             );
//           } else {
//             return const SizedBox(height: 10);
//           }
//         },
//       );
// }

import 'dart:async';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:murious_appp/services/auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SevenDesign extends StatefulWidget {
  const SevenDesign({super.key, required this.eventName});
  final String eventName;

  @override
  State<SevenDesign> createState() => _SevenDesignState();
}

final String? uid = AuthService().getCurrentUid();

class _SevenDesignState extends State<SevenDesign> {
  PlatformFile? pickedFile;
  UploadTask? uploadTask;
  late final String eventName;
  late String submittedTextDesign = '';

  void initState() {
    super.initState();
    // submittedText = '';
    loadSubmittedText();
    Timer.periodic(Duration(minutes: 1), (timer) {
      final now = DateTime.now();
      if (now.hour == 0 && now.minute == 0) {
        resetSubmittedText();
        // submittedText = '';
      }
    });
  }

  void loadSubmittedText() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      submittedTextDesign = prefs.getString('submittedTextDesign') ?? '';
    });
  }

  void saveSubmittedText(String text) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('submittedTextDesign', text);
  }

  void resetSubmittedText() async {
    saveSubmittedText('');
  }

  // Push download URL in Firebase database
  Future<void> uploadDownloadLink(String downloadUrl, String eventName) async {
    try {
      await FirebaseFirestore.instance
          .collection('registeredEvents')
          .doc(uid)
          .update({'$eventName,DownloadUrl': downloadUrl});

      print('Uploaded successfully');
    } catch (e) {
      print('Error sending feedback: $e');
    }
  }

  Future<void> uploadFile(String uid, String eventName) async {
    // Check if a file is picked
    if (pickedFile == null) {
      print('No file selected');
      return;
    }

    // Convert picked file to file object
    final path = '7Design/${pickedFile!.name}';
    final file = File(pickedFile!.path!);
    final ref = FirebaseStorage.instance.ref().child(path);

    setState(() {
      // Assign uploadTask with the upload operation
      uploadTask = ref.putFile(file);
    });

    try {
      // Wait for the upload to complete
      final snapshot = await uploadTask!;
      final urlDownload = await snapshot.ref.getDownloadURL();
      uploadDownloadLink(urlDownload, eventName);
      print('Upload completed successfully: $urlDownload');
      setState(() {
        submittedTextDesign = 'Submitted';
        saveSubmittedText(submittedTextDesign);
      });
    } catch (e) {
      print('Error uploading file: $e');
    }
  }

  Future<void> selectFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result == null) return;
    setState(() {
      pickedFile = result.files.first;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    late Widget centreWidget;

    if (submittedTextDesign.isNotEmpty) {
      centreWidget = Padding(
        padding: EdgeInsets.fromLTRB(
          screenWidth * 0.00,
          screenWidth * 0.3,
          screenWidth * 0.00,
          screenWidth * 0.00,
        ),
        child: Center(
          child: Container(
            alignment: Alignment.center,
            height: screenWidth * 0.2,
            width: screenWidth * 0.6,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(-0.00, -1.00),
                end: Alignment(0, 1),
                colors: [Color(0xFF3E0858), Color(0xFF38022C)],
              ),
              borderRadius: BorderRadius.circular(screenWidth * 0.06),
              border: Border.all(
                width: screenWidth * 0.005,
                // color: Colors.white
              ),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 223, 213, 213),
                  offset: const Offset(
                    2,
                    2,
                  ),
                  blurRadius: 0,
                  spreadRadius: 0,
                ), //BoxShadow
                BoxShadow(
                  color: const Color.fromARGB(255, 223, 213, 213),
                  offset: const Offset(2.0, -0.1),
                  blurRadius: 0.0,
                  spreadRadius: 0.0,
                ), //BoxShadow
              ],
            ),
            child: Text(
              "Submitted",
              textAlign: TextAlign.center,
              style: TextStyle(
                backgroundColor: Colors.transparent,
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: screenWidth * .12,
                fontFamily: 'Murious',
              ),
            ),
          ),
        ),
      );
    } else if (widget.eventName == '7 Days, 7 Designs') {
      centreWidget = Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(
            screenWidth * 0.00,
            screenWidth * 0.1,
            screenWidth * 0.00,
            screenWidth * 0.00,
          ),
          child: Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () async {
                        selectFile();
                      },
                      child: SizedBox(
                        width: screenWidth * 0.25,
                        child: const Text(
                          "Select File",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            backgroundColor: Colors.transparent,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: 'Murious',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.05),
                    ElevatedButton(
                      onPressed: () async {
                        uploadFile(
                            uid!, widget.eventName); // Pass widget.eventName
                      },
                      child: SizedBox(
                        width: screenWidth * 0.25,
                        child: const Text(
                          "Upload",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            backgroundColor: Colors.transparent,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: 'Murious',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenWidth * 0.08,
                ),
                if (pickedFile != null)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          'Selected File:',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: screenWidth * 0.05,
                            fontFamily: 'Murious',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Center(
                        child: Text(
                          pickedFile!.name,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: screenWidth * 0.05,
                            fontFamily: 'Murious',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                SizedBox(
                  height: screenWidth * 0.08,
                ),
                buildProgess(screenWidth),
              ],
            ),
          ),
        ),
      );
    }

    return centreWidget;
  }

  Widget buildProgess(double screenWidth) => StreamBuilder<TaskSnapshot>(
        stream: uploadTask?.snapshotEvents,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final data = snapshot.data!;
            double progress = data.bytesTransferred / data.totalBytes;
            return SizedBox(
              height: 50,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  LinearProgressIndicator(
                    borderRadius: BorderRadius.circular(screenWidth * 0.04),
                    value: progress,
                    backgroundColor: Colors.grey,
                    color: Color.fromARGB(98, 79, 7, 121).withOpacity(1),
                  ),
                  Center(
                    child: Text(
                      '${(100 * progress).roundToDouble()}%',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: screenWidth * 0.05,
                        fontFamily: 'Murious',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),
            );
          } else {
            return const SizedBox(height: 10);
          }
        },
      );
}
