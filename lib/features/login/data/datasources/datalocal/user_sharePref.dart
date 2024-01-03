import 'dart:convert';
import 'package:vcm360/common/repository/local_storage/get_storage_impl.dart';
import 'package:vcm360/core/app_constant.dart';
import 'package:vcm360/di.dart';

import '../../../../../common/network/dio_client.dart';
import '../../models/authentication_model.dart';

class UserSharePref {
  static final UserSharePref _instance = UserSharePref();
  static final _sharePref = getIt<SharedPrefLocalStorageImpl>();
  final _dioClient = getIt<DioClient>();

  static UserSharePref getInstance() {
    _sharePref.init();
    return _instance;
  }

  Future<void> saveUserLogin({
    required User user,
    required String token,
    required bool isSave,
  }) async {
    var jsonModel = user.toJson();
    String model = jsonEncode(User.fromJson(jsonModel));
    await Future.wait([
      _sharePref.set<String>(AppConstant.userLoginKey, model),
      _sharePref.set<String>(AppConstant.tokenKey, token),
      _sharePref.set<bool>(AppConstant.savedLoginKey, isSave),
    ]);

    String tok = await UserSharePref.getInstance().getToken() ?? '';
    _dioClient.dio.options.headers['Authorization'] = tok;
  }

  Future<String?> getToken() async {
    return await _sharePref.get<String>(AppConstant.tokenKey);
  }

  Future<User> getUserLogin() async {
    final key = await _sharePref.get<String>(AppConstant.userLoginKey);
    if (key != null) {
      final map = json.decode(key) as Map<String, dynamic>;
      User userModel = User.fromJson(map);
      return userModel;
    }
    return User();
  }

  Future<void> clearInfoUserLogin() async {
    _dioClient.dio.options.headers['Authorization'] = null;
    await Future.wait([
    clearDataByKey(AppConstant.userLoginKey),
      clearDataByKey(AppConstant.tokenKey),
      clearDataByKey(AppConstant.savedLoginKey),
    ]);
  }

  Future<bool> isKeepLogin() async {
    final has = await _sharePref.get<bool>(AppConstant.savedLoginKey);
    return has ?? false;
  }

  Future<bool> checkUserLogin() async {
    var futures = [
      isKeyExisted(AppConstant.userLoginKey),
      isKeyExisted(AppConstant.tokenKey),
    ];
    var results = await Future.wait(futures);
    bool useInfo = results[0];
    bool token = results[1];
    return useInfo && token;
  }

  Future<void> clearDataByKey(String key) async {
    await _sharePref.remove(key);
  }

  Future<bool> isKeyExisted(String key) async {
    return await _sharePref.isKeyExited(key);
  }

  Future<void> clearAllCache() async {
    _dioClient.dio.options.headers['Authorization'] = null;
    await _sharePref.clear();
  }
}
