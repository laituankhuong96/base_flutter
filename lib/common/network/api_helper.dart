import 'package:vcm360/common/network/dio_exception.dart';
import 'package:vcm360/core/app_extension.dart';
import 'package:dio/dio.dart';
import 'dart:convert';

import '../../di.dart';
import 'dio_client.dart';

abstract class ApiHelper {
  final DioClient dioClient = getIt<DioClient>();

  Future<T> _requestMethodTemplate<T>({
    required String path,
    required T Function(Map<String, dynamic> json) getJsonCallback,
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final Response response = await dioClient.dio.post(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    if (response.statusCode.success) {
      final T t = getJsonCallback(
        json.decode(json.encode(response.data)),
      );
      return t;
    } else {
      throw DioExceptions;
    }
  }

  //Generic Method template for create item on server
  Future<T> makePostRequest<T>({
    required String path,
    Map<String, dynamic>? queryParameters,
    required T Function(Map<String, dynamic> json) getJsonCallback,
    Options? options,
    dynamic data,
  }) async {
    return _requestMethodTemplate(
      path: path,
      data: data,
      options: options,
      queryParameters: queryParameters,
      getJsonCallback: getJsonCallback,
    );
  }

  //Generic Method template for update item on server
  Future<T> makePutRequest<T>({
    required String path,
    Map<String, dynamic>? queryParameters,
    required T Function(Map<String, dynamic> json) getJsonCallback,
    dynamic data,
    Options? options,
  }) async {
    return _requestMethodTemplate(
      path: path,
      data: data,
      options: options,
      queryParameters: queryParameters,
      getJsonCallback: getJsonCallback,
    );
  }

  //Generic Method template for delete item from server
  Future<T> makeDeleteRequest<T>({
    required String path,
    Map<String, dynamic>? queryParameters,
    required T Function(Map<String, dynamic> json) getJsonCallback,
    dynamic data,
    Options? options,
  }) async {
    return _requestMethodTemplate(
      path: path,
      data: data,
      options: options,
      queryParameters: queryParameters,
      getJsonCallback: getJsonCallback,
    );
  }

  //Generic Method template for getting a list data from Api
  @Deprecated('should use `makeGetRequest()` method')
  Future<List<T>> makeGetListRequest<T>(Future<Response<dynamic>> apiCallback,
      T Function(Map<String, dynamic> json) getJsonCallback) async {
    final Response response = await apiCallback;

    final List<T> data = List<T>.from(
      json
          .decode(json.encode(response.data['data']['items']))
          .map((item) => getJsonCallback(item)),
    );
    if (response.statusCode.success) {
      return data;
    } else {
      throw DioExceptions;
    }
  }

  @Deprecated('should use `makeGetRequest()` method')
  Future<List<T>> makeGetListRequest3<T>(Future<Response<dynamic>> apiCallback,
      T Function(Map<String, dynamic> json) getJsonCallback) async {
    final Response response = await apiCallback;

    final List<T> data = List<T>.from(
      json
          .decode(
              json.encode(response.data['data']['listRecruitmentNewsSaved']))
          .map((item) => getJsonCallback(item)),
    );
    if (response.statusCode.success) {
      return data;
    } else {
      throw DioExceptions;
    }
  }

  //Generic Method template for getting a list data from Api
  @Deprecated('should use `makeGetRequest()` method')
  Future<List<T>> makeGetListRequest2<T>({
    required String path,
    required T Function(Map<String, dynamic> json) getJsonCallback,
    Map<String, dynamic>? queryParameters,
  }) async {
    final Response response =
        await dioClient.dio.get(path, queryParameters: queryParameters);

    final List<T> data = List<T>.from(
      json
          .decode(json.encode(response.data['data']['items']))
          .map((item) => getJsonCallback(item)),
    );
    if (response.statusCode.success) {
      return data;
    } else {
      throw DioExceptions;
    }
  }

  //Generic Method template for getting data from Api
  Future<T> makeGetRequest<T>({
    required String path,
    required T Function(Map<String, dynamic> json) getJsonCallback,
    Map<String, dynamic>? queryParameters,
  }) async {
    final Response response = await dioClient.dio.get(
      path,
      queryParameters: queryParameters,
    );

    final T data = getJsonCallback(
      json.decode(json.encode(response.data)),
    );

    if (response.statusCode.success) {
      return data;
    } else {
      throw DioExceptions;
    }
  }

  @Deprecated('should use `makeGetRequest()` method')
  Future<T> makeGetRequest2<T>({
    required String path,
    required T Function(Map<String, dynamic> json) getJsonCallback,
    Map<String, dynamic>? queryParameters,
  }) async {
    final Response response =
        await dioClient.dio.get(path, queryParameters: queryParameters);

    final T data =
        getJsonCallback(json.decode(json.encode(response.data['data'])));

    if (response.statusCode.success) {
      return data;
    } else {
      throw DioExceptions;
    }
  }
}
