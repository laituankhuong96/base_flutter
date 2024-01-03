import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vcm360/di.dart';

import 'local_storage_module.dart';

class SharedPrefLocalStorageImpl extends LocalStorageModule {
  late SharedPreferences _prefs;

  @override
  Future<void> init() async {
    _prefs = getIt.get<SharedPreferences>();
  }

  @override
  Future<T?> get<T>(String key) async {
    switch (T) {
      case String:
        return _prefs.getString(key) as T?;
      case bool:
        return _prefs.getBool(key) as T?;
      case int:
        return _prefs.getInt(key) as T?;
      case double:
        return _prefs.getDouble(key) as T?;
      case List<String>:
        return _prefs.getStringList(key) as T?;
      case Map<String, dynamic>:
        var jsonData = _prefs.getString(key);
        if (jsonData != null) {
          return jsonDecode(jsonData) as T;
        }
        return null;
    }
    throw UnimplementedError();
  }

  @override
  Future<void> set<T>(String key, T value) async {
    switch (T) {
      case String:
        await _prefs.setString(key, value as String);
        return;
      case bool:
        await _prefs.setBool(key, value as bool);
        return;
      case int:
        await _prefs.setInt(key, value as int);
        return;
      case double:
        await _prefs.setDouble(key, value as double);
        return;
      case List<String>:
        await _prefs.setStringList(key, value as List<String>);
        return;
      case Map<String, dynamic>:
        await _prefs.setString(key, jsonEncode(value));
        return;
    }
    throw UnimplementedError();
  }

  @override
  Future<bool> isKeyExited(String key) async {
    return _prefs.containsKey(key);
  }

  @override
  Future<void> remove(String key) async {
    await _prefs.remove(key);
  }

  @override
  Future<void> clear() async {
    _prefs.clear();
  }
}
