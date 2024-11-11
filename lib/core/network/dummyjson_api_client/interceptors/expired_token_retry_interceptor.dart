import 'dart:async';

import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';

//TODO: Finish implementation of ExpiredTokenRetryInterceptor
class ExpiredTokenRetryInterceptor {
  // final Dio _dio;
  // late RetryInterceptor interceptor;
  // final RefreshToken _refreshTokenUseCase;

  // ExpiredTokenRetryInterceptor(
  //   this._dio,
  //   this._refreshTokenUseCase,
  // ) {
  //   interceptor = RetryInterceptor(
  //     dio: _dio,
  //     retries: 1,
  //     retryEvaluator: _evaluate,
  //   );
  // }

  // FutureOr<bool> _evaluate(DioException error, int attempt) async {
  //   if (error.response != null &&
  //       error.response?.statusCode == status401Unauthorized) {
  //     final exp = int.tryParse(await SecureStorage.getExp() ?? '')
  //         ?.toDateTimefromSecondsSinceEpoch;
  //     if (exp != null) {
  //       if (exp.isAfter(DateTime.now())) {
  //         return true;
  //       }
  //     }
  //     await _refreshToken(error.response!);
  //     return true;
  //   }
  //   return false;
  // }

  // Future<void> _refreshToken(Response response) async {
  //   if (response.headers['www-authenticate']!
  //       .where((e) => e.contains('invalid_token'))
  //       .isEmpty) {
  //     _logout();
  //     return;
  //   }

  //   final result = await _refreshTokenUseCase();

  //   if (result is Failure) {
  //     _logout();
  //     return;
  //   }
  // }

  // void _logout() async {
  //   await sl<Toolbox>().deletedToast(
  //       msg:
  //           '${Localization.l.sessionExpired}\n${Localization.l.pleaseLoginAgain}');

  //   sl<NavigateFromMenu>()
  //       .logoutAndNavigateToLogin(MainMaterialApp.navigatorKey.currentContext!);
  // }
}
