import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:murious_appp/services/auth.dart';

final String? uid = AuthService().getCurrentUid();
Future<void> sendFeedback(double rating, String feedback) async {
  try {
    // Push the rating and feedback data to the database
    // await feedbackRef.push().set({
    //   'rating': rating,
    //   'feedback': feedback,
    //   'timestamp': DateTime.now().millisecondsSinceEpoch,
    // });
    await FirebaseFirestore.instance
        .collection('registeredEvents')
        .doc(uid)
        .update({'rating': rating, 'feedback': feedback});

    print('Feedback sent successfully');
  } catch (e) {
    print('Error sending feedback: $e');
  }
}
