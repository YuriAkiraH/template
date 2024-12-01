import 'package:async/async.dart';
import 'package:template/core/network/dummyjson_api_client/api_settings/dummyjson_api_settings.dart';
import 'package:template/features/auth/data/datasource/auth_datasource.dart';
import 'package:template/features/auth/domain/errors/login_errors.dart';
import 'package:template/features/auth/domain/models/credentials.dart';
import 'package:template/features/auth/domain/models/login_result.dart';

class Login {
  final AuthDatasource _authDatasource;

  Login(this._authDatasource);

  Future<Result<LoginResult>> call(Credentials credentials) async {
    if (credentials.username.isEmpty || credentials.password.isEmpty) {
      return Result.error(LoginErrors.USER_NAME_AND_PASSWORD_REQUIRED.error);
    }

    var result = await _authDatasource.login(credentials);
    if (result.isValue) {
      DummyjsonApiSettings.token = result.asValue!.value.accessToken;
    }
    return result;
  }
}
