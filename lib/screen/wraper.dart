import 'package:flutter/material.dart';
import 'package:murious_appp/models/user.dart';
import 'package:murious_appp/screen/authenticate/authenticate.dart';
import 'package:murious_appp/screen/home/home_bg.dart';
import 'package:murious_appp/screen/navigation/Navigation.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    // us accessing user data from the provider to transfer them to different screen

    final user = Provider.of<UserObj?>(context);
    print(user);

    if (user == null) {
      return const Authenticate();
    } else {
      // return HomeUi(user: user);
      return Navigation(user: user);
    }

    // return FigmaToCodeApp();
  }
}
