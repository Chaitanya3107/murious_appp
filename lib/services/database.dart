// import 'package:cloud_firestore/cloud_firestore.dart';

// class DatabaseService {
//   final String uid;
//   DatabaseService({required this.uid});

//   final CollectionReference registeredEvents =
//       FirebaseFirestore.instance.collection('registeredEvents');

//   Stream<QuerySnapshot> get murious {
//     return registeredEvents.snapshots();
//   }
// }

import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;
  late final DocumentReference registeredEvents;

  DatabaseService({required this.uid}) {
    // Initialize registeredEvents inside the constructor
    registeredEvents =
        FirebaseFirestore.instance.collection('registeredEvents').doc(uid);
  }

  Stream<DocumentSnapshot> get murious {
    return registeredEvents.snapshots();
  }
}
