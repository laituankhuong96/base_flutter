import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vcm360/common/network/api_result.dart';
import 'package:vcm360/core/app_extension.dart';
import 'package:vcm360/features/login/domain/usecases/login_usecase.dart';

import '../../../../core/app_string.dart';
import '../../data/models/authentication_model.dart';

part 'authentication_state.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit({
    required this.loginUseCase,
  }) : super(AuthenticationInitial());

  final LoginUseCase loginUseCase;

  Future<void> login({
    required String email,
    required String password,
  }) async {
    emit(AuthenticationChecking());
    ApiResult<AuthenticationModel> failureOrSuccess = await loginUseCase.call(
      AuthenticationParams(email: email, password: password),
    );

    failureOrSuccess.when(success: (auth) {
      if (auth.status?.success ?? true) {
        emit(SuccessfulAuthentication(
          user: auth.data?.user ?? User(),
          token: auth.data!.token!,
        ));
      } else {
        emit(AuthenticationFailed(error: auth.message ?? ''));
      }
    }, failure: (String failure) {
      if (failure == AppString.badRequest) {
        emit(const AuthenticationFailed(
            error: "Tài khoản mật khẩu không chính xác !"));
      } else if(failure == AppString.socketException) {
        emit(const AuthenticationFailed(
            error: "Không có kết nối internet !"));
      }else {
        emit(const AuthenticationFailed(
            error: "Có lỗi xảy ra. Vui lòng thử lại !"));
      }
    });
  }
}
