import 'package:firebase_messaging/firebase_messaging.dart';

Future<void> handleBackgroundMessages(RemoteMessage message) async {
  print('Title: ${message.notification?.title}');
  print('Body: ${message.notification?.body}');
  print('Payload: ${message.data}');
}

class FirebaseApi {
  final _firebaseMessaging = FirebaseMessaging.instance;

  Future<void> initNotification() async {
    await _firebaseMessaging.requestPermission();
    final fCMToken = await _firebaseMessaging.getToken();
    print("Firebase token");
    print(fCMToken);
    FirebaseMessaging.onBackgroundMessage(handleBackgroundMessages);
  }
}

// import 'package:firebase_messaging/firebase_messaging.dart';

// Future<void> handleBackgroundMessages(RemoteMessage message) async {
//   print('Title: ${message.notification?.title}');
//   print('Body: ${message.notification?.body}');
//   print('Payload: ${message.data}');
// }

// class FirebaseApi {
//   final _firebaseMessaging = FirebaseMessaging.instance;
//   final bool notificationsEnabled;

//   FirebaseApi({required this.notificationsEnabled});

//   Future<void> initNotification() async {
//     if (notificationsEnabled) {
//       await _firebaseMessaging.requestPermission();
//       final fCMToken = await _firebaseMessaging.getToken();
//       print("Firebase token");
//       print(fCMToken);
//       FirebaseMessaging.onBackgroundMessage(handleBackgroundMessages);
//     }
//   }
// }

// import 'package:firebase_messaging/firebase_messaging.dart';

// Future<void> handleBackgroundMessages(RemoteMessage message) async {
//   print('Title: ${message.notification?.title}');
//   print('Body: ${message.notification?.body}');
//   print('Payload: ${message.data}');
// }

// class FirebaseApi {
//   final _firebaseMessaging = FirebaseMessaging.instance;
//   // final bool notificationsEnabled;

//   // FirebaseApi({required this.notificationsEnabled});

//   Future<void> initNotification() async {
//     // if (notificationsEnabled) {
//     // print(notificationsEnabled);
//     await _firebaseMessaging.requestPermission();
//     final fCMToken = await _firebaseMessaging.getToken();
//     print("Firebase token");
//     print(fCMToken);
//     FirebaseMessaging.onBackgroundMessage(handleBackgroundMessages);
//     // }
//   }
// }

// import 'package:firebase_messaging/firebase_messaging.dart';

// class FirebaseApi {
//   final _firebaseMessaging = FirebaseMessaging.instance;

//   Future<void> initNotification(bool isEnabled) async {
//     // Initialize or terminate Firebase Messaging based on user preference
//     if (isEnabled) {
//       await _firebaseMessaging.requestPermission();
//       FirebaseMessaging.onBackgroundMessage(_firebaseBackgroundHandler);
//     } else {
//       // Terminate Firebase Messaging if notifications are disabled
//       FirebaseMessaging.instance.deleteToken();
//     }
//   }

//   Future<void> _firebaseBackgroundHandler(RemoteMessage message) async {
//     print('Title: ${message.notification?.title}');
//     print('Body: ${message.notification?.body}');
//     print('Payload: ${message.data}');
//   }
// }
