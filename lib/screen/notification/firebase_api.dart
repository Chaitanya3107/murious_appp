import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:murious_appp/services/auth.dart';

class FirebaseApi {
  String mtoken = '';

  // String uid;
  final String? uid = AuthService().getCurrentUid();

  // FirebaseApi({required this.uid});
  final _firebaseMessaging = FirebaseMessaging.instance;

  Future<void> initNotification() async {
    await _firebaseMessaging.requestPermission();
    final fCMToken = await _firebaseMessaging.getToken();

    print("Firebase token");
    print(fCMToken);
    if (uid != null) {
      saveToken(fCMToken!, uid!);
    } else {
      print('UID is null. Cannot save token.');
    }

    FirebaseMessaging.onBackgroundMessage(handleBackgroundMessages);
  }
}

void saveToken(String token, String uid) async {
  await FirebaseFirestore.instance
      .collection('registeredEvents')
      .doc(uid)
      .update({'token': token});
}

Future<void> handleBackgroundMessages(RemoteMessage message) async {
  print('Title: ${message.notification?.title}');
  print('Body: ${message.notification?.body}');
  print('Payload: ${message.data}');
}
