import 'package:dio/dio.dart';
import 'package:vcm360/ConfigConstants.dart';
import 'package:vcm360/common/network/api_config.dart';
import 'package:vcm360/common/network/chucker_interceptor.dart';
import 'package:vcm360/common/network/dio_interceptor.dart';

class DioClient {
  final Dio dio;

  DioClient(this.dio) {
    dio
      ..options.baseUrl = Constants.BASE_URL
      ..options.headers = ApiConfig.header
      ..options.connectTimeout = ApiConfig.connectionTimeout
      ..options.receiveTimeout = ApiConfig.receiveTimeout
      ..options.responseType = ResponseType.json;
    if (Constants.FLAVOR_NAME == 'DEV') {
      dio.interceptors.add(ChuckerInterceptor());
      // dio.interceptors.add(ChuckerDioInterceptor());
    }
    if (Constants.FLAVOR_NAME == 'PROD' || Constants.FLAVOR_NAME == 'UIT') {
      dio.interceptors.add(DioInterceptor());
    }
  }
}
