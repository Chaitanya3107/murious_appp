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
      // wraping it into provider widget to provide auth change to wraper to decide which screen to transfer
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
