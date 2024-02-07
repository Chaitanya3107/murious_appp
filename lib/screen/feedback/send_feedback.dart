// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_database/firebase_database.dart';

// class FirebaseService {
//   static final FirebaseService _instance = FirebaseService._internal();

//   factory FirebaseService() {
//     return _instance;
//   }

//   FirebaseService._internal();

//   Future<void> initializeApp() async {
//     await Firebase.initializeApp();
//   }

//   Future<void> sendFeedback(double rating, String feedback) async {
//     try {
//       // Get a reference to the realtime database
//       final FirebaseDatabase database = FirebaseDatabase.instance;
//       DatabaseReference feedbackRef = database.reference().child('feedback');

//       // Push the rating and feedback data to the database
//       await feedbackRef.push().set({
//         'rating': rating,
//         'feedback': feedback,
//         'timestamp': DateTime.now().millisecondsSinceEpoch,
//       });

//       print('Feedback sent successfully');
//     } catch (e) {
//       print('Error sending feedback: $e');
//     }
//   }
// }
