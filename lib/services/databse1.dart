import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseServiceOne {
  final String uid;
  late final DocumentReference registeredEvents;

  // DatabaseServiceOne(String? uid);

  DatabaseServiceOne({required this.uid}) {
    // Initialize registeredEvents inside the constructor
    registeredEvents =
        FirebaseFirestore.instance.collection('registeredEvents').doc(uid);
  }

  Stream<DocumentSnapshot> get userdata {
    return registeredEvents.snapshots();
  }
}
