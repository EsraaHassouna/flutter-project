import 'package:dio/Dio.dart';
import 'package:flutter_application_1/data/datasource/remote/config.dart';
import 'package:flutter_application_1/model/MovieResponse.dart';
import 'constants.dart';

class APIService {
  APIService._();

  static final APIService api = APIService._();
  Map<String, dynamic> params = {"api_key": api};
  String url = "popular";

  Future<MovieResponse> showMovieData() async {
    Dio dio = Config.getdio();
    Response respone = await dio.get(url, queryParameters: params);
    if (respone.statusCode == 200) {
      return MovieResponse.fromJson(respone.data);
    } else {
      throw Exception("unable to fitch data from db");
    }
  }
}
