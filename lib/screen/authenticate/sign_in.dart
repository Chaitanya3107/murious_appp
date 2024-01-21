import 'package:flutter/material.dart';
import 'package:murious_appp/app_colors.dart';
import 'package:murious_appp/services/auth.dart';
import 'package:murious_appp/shared/loading.dart';

class SignIN extends StatefulWidget {
  const SignIN({Key? key}) : super(key: key);

  @override
  State<SignIN> createState() => _SignINState();
}

class _SignINState extends State<SignIN> {
  // Instance of the AuthService for authentication
  final AuthService _auth = AuthService();
  bool loading = false;

  // text field state
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return loading
        ? const Loading()
        : Scaffold(
            backgroundColor: AppColors.loginLightBackground,
            appBar: AppBar(
              backgroundColor: AppColors.loginAppBarBackground,
              elevation: 0.0,
              title: const Text('Sign in to Murious'),
            ),
            body: Stack(
              children: [
                // Main content of your page
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 50.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Form with TextFormField for user input
                      Form(
                        child: Column(
                          children: <Widget>[
                            const SizedBox(height: 20.0),
                            TextFormField(
                              decoration: const InputDecoration(
                                hintText: 'Email',
                                hintStyle: TextStyle(color: Colors.black38),
                              ),
                              onChanged: (val) {
                                setState(() {
                                  email = val;
                                });
                              },
                            ),
                            const SizedBox(height: 20.0),
                            TextFormField(
                              decoration: const InputDecoration(
                                hintText: 'Password',
                                hintStyle: TextStyle(color: Colors.black38),
                              ),
                              obscureText: true,
                              onChanged: (val) {
                                setState(() {
                                  password = val;
                                });
                              },
                            ),
                            const SizedBox(height: 20.0),
                            ElevatedButton(
                              onPressed: () async {},
                              child: const Text(
                                'Sign in',
                                style: TextStyle(
                                  color: Colors.deepPurple,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      const Text(
                        "or",
                        style: TextStyle(fontSize: 20),
                      ),
                      const SizedBox(height: 20.0),
                      // ElevatedButton for signing in with Google
                      ElevatedButton(
                        onPressed: () async {
                          setState(() {
                            loading = true;
                          });
                          // Sign in with Google when the button is pressed
                          dynamic result = await _auth.signInWithGoogle();

                          // Check the result of the sign-in
                          if (result == null) {
                            print("Error signing in");
                            setState(() {
                              loading = false;
                            });
                          } else {
                            setState(() {
                              loading = false;
                            });
                            // Successful sign-in
                            print("Signed In");
                            print(result.uid);
                          }
                        },
                        child: const Text(
                          "Sign in using Google",
                          style: TextStyle(color: Colors.deepPurple),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
  }
}
