import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:template/core/network/farmanager_api_client/api_settings/farmanager_api_settings.dart';

class AuthInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (kDebugMode) {
      log('🌐 ===> ${options.method} ${options.uri}');
    }
    options.headers['Authorization'] = 'Bearer ${FarmanagerApiSettings.token}';
    super.onRequest(options, handler);
  }
}
