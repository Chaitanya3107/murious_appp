// import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:murious_appp/models/user.dart';
// import 'package:murious_appp/screen/notification/firebase_api.dart';
// import 'package:murious_appp/screen/splash%20screen/splash_screen.dart';
// import 'package:murious_appp/services/auth.dart';
// import 'firebase_options.dart';
// import 'package:firebase_database/firebase_database.dart';
// import 'package:provider/provider.dart';

// FirebaseDatabase database = FirebaseDatabase.instance;

// DatabaseReference ref = FirebaseDatabase.instance.ref("users/animesh");

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );
//   await FirebaseApi().initNotification();

//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // wraping it into provider widget to provide auth change to wraper to decide which screen to transfer
//     return StreamProvider<UserObj?>.value(
//       value: AuthService().user,
//       initialData: null,
//       child: const MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: SplashScreen(),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:murious_appp/models/user.dart';
import 'package:murious_appp/screen/home/carousel/carousel_state.dart';
import 'package:murious_appp/screen/notification/firebase_api.dart';
import 'package:murious_appp/screen/splash%20screen/splash_screen.dart';
import 'package:murious_appp/services/auth.dart';
import 'firebase_options.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:provider/provider.dart';

FirebaseDatabase database = FirebaseDatabase.instance;
DatabaseReference ref = FirebaseDatabase.instance.ref("users/animesh");

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseApi().initNotification();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CarouselState>(create: (_) => CarouselState()),
        // Add other providers if needed
      ],
      child: StreamProvider<UserObj?>.value(
        value: AuthService().user,
        initialData: null,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SplashScreen(),
        ),
      ),
    );
  }
}



// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:murious_appp/screen/notification/firebase_api.dart';
// import 'package:murious_appp/screen/notification/notification_ui.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   // Initialize Firebase
//   await Firebase.initializeApp();

//   // Retrieve the saved notification state
//   bool notificationsEnabled = await _loadNotificationStatus();

//   // Initialize Firebase Messaging with the appropriate notification status
//   FirebaseApi().initNotification(notificationsEnabled);

//   runApp(const MyApp());
// }

// Future<bool> _loadNotificationStatus() async {
//   final prefs = await SharedPreferences.getInstance();
//   return prefs.getBool('notificationsEnabled') ?? true;
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: const NotificationUi(),
//     );
//   }
// }






// import 'package:flutter/material.dart';
// // import 'package:firebase_core/firebase_core.dart';
// // import 'package:murious_appp/models/user.dart';
// // import 'package:murious_appp/screen/notification/firebase_api.dart';
// // import 'package:murious_appp/screen/notification/notification.dart';
// // import 'package:murious_appp/screen/splash%20screen/splash_screen.dart';
// // import 'package:murious_appp/screen/wraper.dart';
// // import 'package:murious_appp/services/auth.dart';
// // import 'firebase_options.dart';
// // import 'package:firebase_database/firebase_database.dart';
// // import 'package:provider/provider.dart';

// // FirebaseDatabase database = FirebaseDatabase.instance;
// // DatabaseReference ref = FirebaseDatabase.instance.ref("users/animesh");

// // void main() async {
// //   WidgetsFlutterBinding.ensureInitialized();
// //   await Firebase.initializeApp(
// //     options: DefaultFirebaseOptions.currentPlatform,
// //   );

// //   bool notificationsEnabled = true;

// //   runApp(
// //     MyApp(
// //       notificationStatus: (bool isEnabled) {
// //         notificationsEnabled = isEnabled;
// //         FirebaseApi(notificationsEnabled: notificationsEnabled)
// //             .initNotification();
// //       },
// //     ),
// //   );
// // }

// // class MyApp extends StatelessWidget {
// //   const MyApp({Key? key, required this.notificationStatus}) : super(key: key);

// //   final NotificationStatusCallback notificationStatus;

// //   @override
// //   Widget build(BuildContext context) {
// //     return StreamProvider<UserObj?>.value(
// //       value: AuthService().user,
// //       initialData: null,
// //       child: MaterialApp(
// //         debugShowCheckedModeBanner: false,
// //         home: SplashScreen(),
// //       ),
// //     );
// //   }
// // }

