import 'package:reporter_app/http/client.dart';
import 'package:reporter_app/models/response/response.dart';

import '../models/task/task.dart';

class TaskRepository {
  final HttpClient client;

  TaskRepository({
    required this.client,
  });

  Future<Response> getTasks() async {
    var res = await client.dio.get(client.environment.task);
    return Response(
        data: (res.data['data'] as List).map((e) => Task.fromJson(e)).toList());
  }
}
