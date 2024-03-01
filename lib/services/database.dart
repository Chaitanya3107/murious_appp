// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:async/async.dart';

// class DatabaseService {
//   final String uid;

//   DatabaseService({required this.uid});

//   // Stream to fetch data from multiple collections based on UID
//   Stream<List<QuerySnapshot>> get murious {
//     final FirebaseFirestore firestore = FirebaseFirestore.instance;

//     // Stream of snapshots from the 'registeredEvents' collection
//     Stream<QuerySnapshot> registeredEventsStream = firestore
//         .collection('registeredEvents')
//         .where('uid', isEqualTo: uid)
//         .snapshots();

//     // final DocumentReference registeredEvents =
//     //     FirebaseFirestore.instance.collection('registeredEvents').doc(uid);
//     // Stream of snapshots from the 'otherCollection' collection
//     Stream<QuerySnapshot> registeredTeamEvents = firestore
//         .collection('registeredTeamEvents')
//         .where('uid', isEqualTo: uid)
//         .snapshots();

//     // Combine the streams from both collections
//     return StreamZip([registeredEventsStream, registeredTeamEvents]);
//   }
// }

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:async/async.dart';

// class DatabaseService {
//   final String uid;

//   DatabaseService({required this.uid});

//   // Stream to fetch data from multiple collections based on UID
//   Stream<List<DocumentReference>> get murious {
//     final FirebaseFirestore firestore = FirebaseFirestore.instance;

//     // Stream of snapshots from the 'registeredEvents' collection
//     Stream<DocumentReference> registeredEventsStream =
//         FirebaseFirestore.instance.collection('registeredEvents').doc(uid);

//     // final DocumentReference registeredEvents =
//     //     FirebaseFirestore.instance.collection('registeredEvents').doc(uid);

//     // Stream of snapshots from the 'otherCollection' collection
//     Stream<DocumentReference> registeredTeamEvents = firestore
//         .collection('registeredTeamEvents')
//         .where('uid', isEqualTo: uid)
//         .snapshots();

//     // Combine the streams from both collections
//     return StreamZip([registeredEvents, registeredTeamEvents]);
//   }
// }

import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;

  DatabaseService({required this.uid});

  // Stream to fetch document snapshots from multiple collections based on UID
  Stream<List<DocumentSnapshot>> get murious async* {
    final firestore = FirebaseFirestore.instance;

    // Create queries for both collections
    final registeredEventsQuery =
        firestore.collection('registeredEvents').doc(uid);
    final registeredTeamEventsQuery =
        firestore.collection('registeredTeamEvents').doc(uid);

    // Get snapshots from both collections
    final registeredEventsSnaps = await registeredEventsQuery.get();
    final registeredTeamEventsSnaps = await registeredTeamEventsQuery.get();

    // Combine snapshots into a single list
    final combinedSnapshots = [
      registeredEventsSnaps,
      registeredTeamEventsSnaps,
    ];

    // Yield the list of snapshots as a stream
    yield combinedSnapshots;
  }
}
