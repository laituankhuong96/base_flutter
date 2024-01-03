import '../../../../common/network/api_result.dart';
import '../../data/models/authentication_model.dart';

abstract class AuthenticationRepository {
  Future<ApiResult<AuthenticationModel>> login({
    required String email,
    required String password,
  });

  Future<ApiResult<AuthenticationModel>> logout();
}
