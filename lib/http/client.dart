import 'package:dio/dio.dart';
import 'package:reporter_app/environment/environment.dart';

class HttpClient {
  final Environment environment;

  HttpClient({
    required this.environment,
  });
  late Dio dio;

  void init() {
    dio = Dio(createBaseOptions());
  }

  BaseOptions createBaseOptions() {
    return BaseOptions(
      baseUrl: environment.baseUrl,
    );
  }
}
