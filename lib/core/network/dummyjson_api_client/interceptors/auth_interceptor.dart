import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:template/core/network/dummyjson_api_client/api_settings/dummyjson_api_settings.dart';

class AuthInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (kDebugMode) {
      log('🌐 ===> ${options.method} ${options.uri}');
    }

    if (DummyjsonApiSettings.token?.isNotEmpty ?? false) {
      options.headers['Authorization'] = 'Bearer ${DummyjsonApiSettings.token}';
    }

    super.onRequest(options, handler);
  }
}
