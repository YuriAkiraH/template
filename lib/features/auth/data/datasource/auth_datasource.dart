import 'package:template/core/network/dummyjson_api_client/api_client/dummyjson_api_client.dart';
import 'package:template/features/auth/domain/models/credentials.dart';
import 'package:template/features/auth/domain/models/login_result.dart';

class AuthDatasource {
  final DummyjsonApiClient _dummyjsonApi;

  AuthDatasource(this._dummyjsonApi);

  Future<LoginResult> login(Credentials credentials) async {
    final result = await _dummyjsonApi.post('/auth/login', credentials);
    return LoginResult.fromJson(result);
  }
}
