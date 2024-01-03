import 'package:vcm360/common/network/api_result.dart';
import 'package:vcm360/common/network/dio_exception.dart';
import 'package:dio/dio.dart';

mixin RepositoryHelper {
  @Deprecated('should use `checkItemsFailOrSuccess() method`')
  Future<ApiResult<List<T>>> checkListItemsFailOrSuccess<T>(
      Future<List<T>> apiCallback) async {
    try {
      final List<T> items = await apiCallback;
      return ApiResult.success(items);
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      return ApiResult.failure(errorMessage);
    }
  }

  Future<ApiResult<T>> checkItemsFailOrSuccess<T>(Future<T> apiCallback) async {
    try {
      final T items = await apiCallback;
      return ApiResult.success(items);
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      return ApiResult.failure(errorMessage);
    }
  }

  Future<ApiResult<bool>> checkItemFailOrSuccess<T>(
      Future<bool> apiCallback) async {
    try {
      await apiCallback;
      return const ApiResult.success(true);
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      return ApiResult.failure(errorMessage);
    }
  }
}
