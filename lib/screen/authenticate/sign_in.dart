import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:murious_appp/screen/login_app/screens/login_screen/components/top_text.dart';
import 'package:murious_appp/screen/login_app/utils/constants.dart';
import 'package:murious_appp/shared/loading.dart';
import 'package:sign_in_button/sign_in_button.dart';
import 'package:murious_appp/services/auth.dart';

class SignIN extends StatefulWidget {
  const SignIN({Key? key}) : super(key: key);

  @override
  State<SignIN> createState() => _SignINState();
}

class _SignINState extends State<SignIN> {
  late final List<Widget> loginContent;

  // text field state
  late TextEditingController emailController;
  late TextEditingController passwordController;

  // Instance of the AuthService for authentication
  final AuthService _auth = AuthService();
  bool loading = false;

  // Helper method to create input fields
  Widget inputField(String hint, IconData iconData, bool isPassword,
      TextEditingController controller) {
    bool obscureText = isPassword;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 8),
      child: SizedBox(
        height: 50,
        child: Material(
          elevation: 8,
          shadowColor: Colors.black87,
          color: Colors.black,
          borderRadius: BorderRadius.circular(30),
          child: TextField(
            controller: controller,
            onChanged: (val) {
              // Update the corresponding controller value
              setState(() {
                controller.text = val;
              });
            },
            obscureText: obscureText,
            textAlignVertical: TextAlignVertical.bottom,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.white,
              hintText: hint,
            ),
          ),
        ),
      ),
    );
  }

  // Helper method to create login buttons
  Widget loginButton(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 135, vertical: 16),
      child: ElevatedButton(
        onPressed: () async {
          // Show loading spinner
          setState(() {
            loading = true;
          });

          // Simulate a delay for demonstration purposes (replace with actual sign-in logic)
          // await Future.delayed(const Duration(seconds: 2));

          // Perform email/password sign-in
          dynamic result = await _auth.signInWithEmailAndPassword(
              emailController.text, passwordController.text);

          // Check the result of the sign-in
          if (result == null) {
            print("Error signing in");
          } else {
            // Successful sign-in
            print("Signed In");
            print(result.uid);
          }

          // Hide loading spinner
          setState(() {
            loading = false;
          });
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 14),
          shape: const StadiumBorder(),
          backgroundColor: kBackgroundColor,
          elevation: 5,
          shadowColor: Colors.white,
        ),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  // Helper method to create the divider for "or"
  Widget orDivider() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 130, vertical: 10),
      child: Row(
        children: [
          Flexible(
            child: Container(
              height: 1,
              color: kPrimaryColor,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'or',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
          Flexible(
            child: Container(
              height: 1,
              color: kPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to create the logos section with Google Sign-In button
  Widget logos() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SignInButton(
            Buttons.googleDark,
            onPressed: () async {
              // Show loading spinner
              setState(() {
                loading = true;
              });

              // Sign in with Google when the button is pressed
              dynamic result = await _auth.signInWithGoogle();

              // Check the result of the sign-in
              if (result == null) {
                print("Error signing in with Google");
              } else {
                // Successful sign-in
                print("Signed In with Google");
                print(result.uid);
              }

              // Hide loading spinner
              setState(() {
                loading = false;
              });
            },
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();

    // Initialize the list of widgets for the login content
    loginContent = [
      inputField('Email', Ionicons.mail_outline, false, emailController),
      inputField(
          'Password', Ionicons.lock_closed_outline, true, passwordController),
      loginButton('Log In'),
      orDivider(),
      logos(),
    ];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // const Positioned(
          //   top: 136,
          //   left: 24,
          //   child: TopText(),
          // ),
          TopText(),
          SingleChildScrollView(
            padding: const EdgeInsets.only(top: 330, bottom: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: loginContent,
            ),
          ),
          // Show loading spinner when loading is true
          if (loading) const Loading(),
        ],
      ),
    );
  }
}
