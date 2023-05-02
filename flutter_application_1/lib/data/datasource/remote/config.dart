import 'package:dio/dio.dart';

class Config {
  static Dio getdio() {
    Dio dio = Dio(BaseOption(baseUrl: "https://api.themoviedb.org/3/movie/"));
    dio.interceptors
        .add(LogInterceptor(responseBody: true, request: true, error: true));
    return dio;
  }
}
