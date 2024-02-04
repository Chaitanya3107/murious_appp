// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:murious_appp/models/user.dart';

// class AuthService {
//   final FirebaseAuth _auth = FirebaseAuth.instance;

//   // Convert Firebase User to our custom UserObj
//   UserObj? _userFromFirebaseUser(User? user) {
//     return user != null ? UserObj(uid: user.uid) : null;
//   }

//   // Stream to listen for changes in the authentication state
//   // Returns UserObj or null based on the authentication state
//   Stream<UserObj?> get user {
//     return _auth.authStateChanges().map(_userFromFirebaseUser);
//   }

//   // Sign in with Google
//   Future<UserObj?> signInWithGoogle() async {
//     try {
//       // Trigger Google Sign In
//       GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
//       GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

//       if (googleUser == null || googleAuth == null) {
//         // Handle case where the user canceled the sign-in process
//         return null;
//       }

//       // Create authentication credentials
//       AuthCredential credential = GoogleAuthProvider.credential(
//         accessToken: googleAuth.accessToken,
//         idToken: googleAuth.idToken,
//       );

//       // Sign in with the created credentials
//       UserCredential userCredential =
//           await _auth.signInWithCredential(credential);

//       // Return UserObj based on the signed-in user
//       return _userFromFirebaseUser(userCredential.user);
//     } catch (e) {
//       // Handle the error, you can print it for debugging purposes
//       print('Error signing in with Google: $e');
//       return null;
//     }
//   }

//   // Sign out from Google
//   // ignore: body_might_complete_normally_nullable
//   Future<UserObj?> signOutGoogle() async {
//     try {
//       await GoogleSignIn().signOut();
//       await _auth.signOut();
//     } catch (e) {
//       // Handle the error, you can print it for debugging purposes
//       print('Error signing out with Google: $e');
//       return null;
//     }
//   }

//   signInWithEmailAndPassword(String email, String password) async {
//     // Authresult result = await._
//     try {
//       UserCredential result = await _auth.signInWithEmailAndPassword(
//           email: email, password: password);
//       User user = result.user!;
//       return _userFromFirebaseUser(user);
//     } catch (e) {
//       print(e.toString());
//       return null;
//     }
//   }
// }

// auth.dart
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:murious_appp/models/user.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Convert Firebase User to our custom UserObj
  UserObj? _userFromFirebaseUser(User? user) {
    return user != null ? UserObj(uid: user.uid) : null;
  }

  // Stream to listen for changes in the authentication state
  // Returns UserObj or null based on the authentication state
  Stream<UserObj?> get user {
    return _auth.authStateChanges().map(_userFromFirebaseUser);
  }

  // Sign in with Google
  Future<UserObj?> signInWithGoogle() async {
    try {
      // Trigger Google Sign In
      GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

      if (googleUser == null || googleAuth == null) {
        // Handle case where the user canceled the sign-in process
        return null;
      }

      // Create authentication credentials
      AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // Sign in with the created credentials
      UserCredential userCredential =
          await _auth.signInWithCredential(credential);

      // Return UserObj based on the signed-in user
      return _userFromFirebaseUser(userCredential.user);
    } catch (e) {
      // Handle the error, you can print it for debugging purposes
      print('Error signing in with Google: $e');
      return null;
    }
  }

  // Sign out from Google
  Future<UserObj?> signOutGoogle() async {
    try {
      await GoogleSignIn().signOut();
      await _auth.signOut();
    } catch (e) {
      // Handle the error, you can print it for debugging purposes
      print('Error signing out with Google: $e');
      return null;
    }
  }

  Future<UserObj?> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User user = result.user!;
      return _userFromFirebaseUser(user);
    } catch (e) {
      // Handle specific error cases
      if (e is FirebaseAuthException) {
        print('FirebaseAuthException: ${e.message}');
        // You can handle different error codes here if needed
      } else {
        // Handle other exceptions
        print('Error signing in: $e');
      }
      return null;
    }
  }
}
