import 'package:vcm360/common/network/api_result.dart';
import 'package:vcm360/features/login/data/models/authentication_model.dart';
import 'package:vcm360/features/login/domain/repositories/authentication_repository.dart';

import '../../../../common/usecase/usecase.dart';

class LoginUseCase extends UseCase<AuthenticationModel, AuthenticationParams> {
  final AuthenticationRepository authenticationRepository;

  LoginUseCase({required this.authenticationRepository});

  @override
  Future<ApiResult<AuthenticationModel>> call(
    AuthenticationParams params,
  ) async {
    return await authenticationRepository.login(
      email: params.email,
      password: params.password,
    );
  }
}

class AuthenticationParams {
  final String email;
  final String password;

  AuthenticationParams({required this.email, required this.password});
}
