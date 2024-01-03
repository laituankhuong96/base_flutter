import '../../../../common/network/api_endpoint.dart';
import '../../../../common/network/api_helper.dart';
import '../models/authentication_model.dart';
import 'dataremote/authentication_remote_data_source.dart';

class AuthenticationRemoteDataSourceImpl
    with ApiHelper
    implements AuthenticationRemoteDataSource {
  @override
  Future<AuthenticationModel> login({
    required String email,
    required String password,
  }) async {
    return await makePostRequest(
      path: ApiEndPoint.authLogin,
      getJsonCallback: AuthenticationModel.fromJson,
      queryParameters: {'account': email, 'password': password},
    );
  }

  @override
  Future<AuthenticationModel> logout() async {
    // TODO: implement logout
    throw UnimplementedError();
  }
}
