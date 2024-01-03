abstract class LocalStorageModule {
  Future<void> init();

  Future<void> set<T>(String key, T value);

  Future<void> remove(String key);

  Future<T?> get<T>(String key);

  Future<void> clear();

  Future<bool> isKeyExited(String key);
}
