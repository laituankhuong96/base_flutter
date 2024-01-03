import 'package:vcm360/common/network/api_result.dart';
import 'package:vcm360/features/login/data/datasources/dataremote/authentication_remote_data_source.dart';
import 'package:vcm360/features/login/domain/repositories/authentication_repository.dart';

import '../../../../common/repository/repository_helper.dart';
import '../models/authentication_model.dart';

class AuthenticationRepositoryImpl extends AuthenticationRepository
    with RepositoryHelper {
  AuthenticationRepositoryImpl({required this.remoteDataSource});

  final AuthenticationRemoteDataSource remoteDataSource;

  @override
  Future<ApiResult<AuthenticationModel>> login({
    required String email,
    required String password,
  }) async {
    return checkItemsFailOrSuccess(remoteDataSource.login(
      email: email,
      password: password,
    ));
  }

  @override
  Future<ApiResult<AuthenticationModel>> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }
}
