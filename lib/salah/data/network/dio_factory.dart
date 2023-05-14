



import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import '../../core/extensions/extensions.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../core/preferences/preferences_keys.dart';
import '../constants.dart';
import '../../core/preferences/app_preferences.dart';

const String APPLICATION_JSON = "application/json";
const String CONTENT_TYPE = "content-type";
const String ACCEPT = "accept";
const String AUTHORIZATION = "authorization";
const String DEFAULT_LANGUAGE = "language";

class DioFactory {
  final AppPreferences _appPreferences;

  DioFactory(this._appPreferences);

  Dio getDio()  {
    Dio dio = Dio();

    String token =  _appPreferences.getToken() ?? "";

    Map<String, String> headers = {
      CONTENT_TYPE: APPLICATION_JSON,
      ACCEPT: APPLICATION_JSON,
      AUTHORIZATION: token,
    };

    dio.options = BaseOptions(
      baseUrl: Constants.baseUrl,
      headers: headers,
      receiveTimeout:const Duration(seconds:  Constants.apiTimeOut),
      sendTimeout: const Duration(seconds:  Constants.apiTimeOut),
    );

    if (!kReleaseMode) {
      // its debug mode so print app logs
      dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
      ));
    }

    return dio;
  }
}
