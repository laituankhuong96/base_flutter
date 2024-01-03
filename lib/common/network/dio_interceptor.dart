
import 'package:vcm360/core/app_extension.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

class DioInterceptor extends Interceptor {
  final Logger logger = Logger(
    printer: PrettyPrinter(
      methodCount: 0,
      printTime: false,
    ),
  );

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    logger.i('====================START====================');
    logger.i('HTTP method => ${options.method} ');
    logger.i('Request => ${options.baseUrl}${options.path}${options.queryParameters.format}');
    logger.i('Header  => ${options.headers}');
    return super.onRequest(options, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    // code 403 : handle token expired
    if (err.response?.statusCode == 403) {
      // DialogUtils.dialogNotyTokenExpired();
      return;
    }
    final options = err.requestOptions;
    logger.e(options.method); // Debug log
    logger.e('Error: ${err.error}, Message: ${err.message}'); // Error log
    return super.onError(err, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    logger.d('Response => StatusCode: ${response.statusCode}'); // Debug log
    logger.d('Response => Body: ${response.data}'); // Debug log
    return super.onResponse(response, handler);
  }
}
