class ApiConfig {
  ApiConfig._();

  /* config api */
  static String token = "";
  static const header = {
    'Content-type': 'application/json',
    'connection': 'keep-alive'
  };
  static const int receiveTimeout = 15000;
  static const int connectionTimeout = 15000;
  static const String baseUrl = "http://125.212.229.42:3600/api/v1/";
}
