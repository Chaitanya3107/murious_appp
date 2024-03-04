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
