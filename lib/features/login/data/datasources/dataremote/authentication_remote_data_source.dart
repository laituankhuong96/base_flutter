import '../../models/authentication_model.dart';

abstract class AuthenticationRemoteDataSource {
  Future<AuthenticationModel> login({
    required String email,
    required String password,
  });

  Future<AuthenticationModel> logout();
}
