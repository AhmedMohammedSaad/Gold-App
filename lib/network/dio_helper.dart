import 'package:dio/dio.dart';

class DioHelper {
  static Dio? dio;
  // https://www.goldapi.io/api/XAU/USD/
  static inin() {
    dio = Dio(BaseOptions(
      baseUrl: 'https://www.goldapi.io/api/',
      receiveDataWhenStatusError: true,
    ));
  }

  static Future<Response> getData(String url) {
    dio!.options.headers = {'x-access-token': 'goldapi-1o5mwrjrlssgly53-io'};
    return dio!.get(url);
  }
}
