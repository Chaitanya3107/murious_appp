// import 'package:flutter/material.dart';
// import 'package:ionicons/ionicons.dart';
// import 'package:sign_in_button/sign_in_button.dart';
// import 'top_text.dart';
// import '../../../utils/constants.dart';

// class LoginContent extends StatefulWidget {
//   const LoginContent({Key? key}) : super(key: key);

//   @override
//   State<LoginContent> createState() => _LoginContentState();
// }

// class _LoginContentState extends State<LoginContent> {
//   late final List<Widget> loginContent;

//   // text field state
//   String email = '';
//   String password = '';

//   // Helper method to create input fields
//   Widget inputField(String hint, IconData iconData, bool isPassword) {
//     bool obscureText = isPassword;

//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 8),
//       child: SizedBox(
//         height: 50,
//         child: Material(
//           elevation: 8,
//           shadowColor: Colors.black87,
//           color: Colors.black,
//           borderRadius: BorderRadius.circular(30),
//           child: TextField(
//             obscureText: obscureText,
//             textAlignVertical: TextAlignVertical.bottom,
//             decoration: InputDecoration(
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(30),
//                 borderSide: BorderSide.none,
//               ),
//               filled: true,
//               fillColor: Colors.white,
//               hintText: hint,
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   // Helper method to create login buttons
//   Widget loginButton(String title) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 135, vertical: 16),
//       child: ElevatedButton(
//         onPressed: () {
//           // Add your logic for regular login here
//         },
//         style: ElevatedButton.styleFrom(
//           padding: const EdgeInsets.symmetric(vertical: 14),
//           shape: const StadiumBorder(),
//           backgroundColor: kBackgroundColor,
//           elevation: 5,
//           shadowColor: Colors.white,
//         ),
//         child: Text(
//           title,
//           style: const TextStyle(
//             fontSize: 18,
//             fontWeight: FontWeight.bold,
//             color: Colors.white,
//           ),
//         ),
//       ),
//     );
//   }

//   // Helper method to create the divider for "or"
//   Widget orDivider() {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 130, vertical: 12),
//       child: Row(
//         children: [
//           Flexible(
//             child: Container(
//               height: 1,
//               color: kPrimaryColor,
//             ),
//           ),
//           const Padding(
//             padding: EdgeInsets.symmetric(horizontal: 16),
//             child: Text(
//               'or',
//               style: TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.w600,
//                 color: Colors.white,
//               ),
//             ),
//           ),
//           Flexible(
//             child: Container(
//               height: 1,
//               color: kPrimaryColor,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   // Helper method to create the logos section with Google Sign-In button
//   Widget logos() {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 30),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           SignInButton(
//             Buttons.googleDark,
//             onPressed: () async {
//               // Add your logic for signing in with Google here
//               // Use the logic from the SignIN widget
//             },
//           )
//         ],
//       ),
//     );
//   }

//   // Helper method to create the "Forgot Password?" text button
//   Widget forgotPassword() {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16),
//       child: TextButton(
//         onPressed: () {
//           // Add your logic for forgot password here
//         },
//         child: const Text(
//           'Forgot Password?',
//           style: TextStyle(
//             fontSize: 16,
//             fontWeight: FontWeight.w600,
//             color: kSecondaryColor,
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   void initState() {
//     // Initialize the list of widgets for the login content
//     loginContent = [
//       inputField('Email', Ionicons.mail_outline, false),
//       inputField('Password', Ionicons.lock_closed_outline, true),
//       loginButton('Log In'),
//       forgotPassword(),
//       orDivider(),
//       logos(),
//     ];

//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           const Positioned(
//             top: 136,
//             left: 24,
//             child: TopText(),
//           ),
//           SingleChildScrollView(
//             padding: const EdgeInsets.only(top: 330, bottom: 50),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: loginContent,
//             ),
//           ),
//           const Align(
//             alignment: Alignment.bottomCenter,
//             child: Padding(
//               padding: EdgeInsets.only(bottom: 50),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:murious_appp/app_colors.dart';
// import 'package:murious_appp/services/auth.dart';
// import 'package:murious_appp/shared/loading.dart';

// class SignIN extends StatefulWidget {
//   const SignIN({Key? key}) : super(key: key);

//   @override
//   State<SignIN> createState() => _SignINState();
// }

// class _SignINState extends State<SignIN> {
//   // Instance of the AuthService for authentication
//   final AuthService _auth = AuthService();
//   bool loading = false;

//   // text field state
//   String email = '';
//   String password = '';

//   @override
//   Widget build(BuildContext context) {
//     return loading
//         ? const Loading()
//         : Scaffold(
//             backgroundColor: AppColors.loginLightBackground,
//             appBar: AppBar(
//               backgroundColor: AppColors.loginAppBarBackground,
//               elevation: 0.0,
//               title: const Text('Sign in to Murious'),
//             ),
//             body: Stack(
//               children: [
//                 // Main content of your page
//                 Container(
//                   alignment: Alignment.center,
//                   padding: const EdgeInsets.symmetric(
//                       vertical: 20.0, horizontal: 50.0),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       // Form with TextFormField for user input
//                       Form(
//                         child: Column(
//                           children: <Widget>[
//                             const SizedBox(height: 20.0),
//                             TextFormField(
//                               decoration: const InputDecoration(
//                                 hintText: 'Email',
//                                 hintStyle: TextStyle(color: Colors.black38),
//                               ),
//                               onChanged: (val) {
//                                 setState(() {
//                                   email = val;
//                                 });
//                               },
//                             ),
//                             const SizedBox(height: 20.0),
//                             TextFormField(
//                               decoration: const InputDecoration(
//                                 hintText: 'Password',
//                                 hintStyle: TextStyle(color: Colors.black38),
//                               ),
//                               obscureText: true,
//                               onChanged: (val) {
//                                 setState(() {
//                                   password = val;
//                                 });
//                               },
//                             ),
//                             const SizedBox(height: 20.0),
//                             ElevatedButton(
//                               onPressed: () async {},
//                               child: const Text(
//                                 'Sign in',
//                                 style: TextStyle(
//                                   color: Colors.deepPurple,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       const SizedBox(height: 20.0),
//                       const Text(
//                         "or",
//                         style: TextStyle(fontSize: 20),
//                       ),
//                       const SizedBox(height: 20.0),
//                       // ElevatedButton for signing in with Google
//                       ElevatedButton(
//                         onPressed: () async {
//                           setState(() {
//                             loading = true;
//                           });
//                           // Sign in with Google when the button is pressed
//                           dynamic result = await _auth.signInWithGoogle();

//                           // Check the result of the sign-in
//                           if (result == null) {
//                             print("Error signing in");
//                             setState(() {
//                               loading = false;
//                             });
//                           } else {
//                             setState(() {
//                               loading = false;
//                             });
//                             // Successful sign-in
//                             print("Signed In");
//                             print(result.uid);
//                           }
//                         },
//                         child: const Text(
//                           "Sign in using Google",
//                           style: TextStyle(color: Colors.deepPurple),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           );
//   }
// }s
