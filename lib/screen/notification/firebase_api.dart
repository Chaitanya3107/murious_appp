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

// class NotificationFirebase extends StatefulWidget {
//   const NotificationFirebase({Key? key, required this.uid}) : super(key: key);

//   final String uid;

//   @override
//   State<NotificationFirebase> createState() => _NotificationFirebaseState();
// }

// class _NotificationFirebaseState extends State<NotificationFirebase> {
//   late String? mtoken;

//   @override
//   void initState() {
//     super.initState();
//     FirebaseMessaging.onBackgroundMessage(handleBackgroundMessages);
//     requestPermission();
//     getToken();
//   }

//   void requestPermission() async {
//     FirebaseMessaging messaging = FirebaseMessaging.instance;
//     NotificationSettings settings = await messaging.requestPermission(
//       alert: true,
//       badge: true,
//       provisional: false,
//       sound: true,
//     );
//   }

//   void getToken() async {
//     String? token = await FirebaseMessaging.instance.getToken();
//     if (token != null) {
//       setState(() {
//         mtoken = token;
//         print("Firebase token: $mtoken");
//       });
//       saveToken(token);
//     }
//   }

//   void saveToken(String token) async {
//     await FirebaseFirestore.instance
//         .collection('registeredEvents')
//         .doc(widget.uid)
//         .set({'token': token});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder(); // Replace with your actual widget
//   }
// }
