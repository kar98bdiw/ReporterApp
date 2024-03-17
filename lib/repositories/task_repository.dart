import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:reporter_app/environment/environment.dart';
import 'package:reporter_app/http/client.dart';
import 'package:rxdart/subjects.dart';

import '../core/models/task/task.dart';

class TaskRepository {
  final HttpClient client;
  BehaviorSubject taskNotifier = BehaviorSubject<Task>();
  var firestore = FirebaseFirestore.instance;
  TaskRepository({
    required this.client,
  });

  Future<void> initTaskListener() async {
    firestore.collection(Environment.tasks).snapshots().listen((event) {
      for (var e in event.docChanges) {
        taskNotifier.add(Task.fromJson(e.doc.data()!));
      }
    });
  }
}
