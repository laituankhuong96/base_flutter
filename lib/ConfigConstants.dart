enum Environment { DEV, STAGING, PROD, UIT }

class Constants {
  static Map<String, dynamic> _config = {};

  static void setEnvironment(Environment env) {
    switch (env) {
      case Environment.DEV:
        _config = _Config.debugConstants;
        break;
      case Environment.STAGING:
        _config = _Config.testConstants;
        break;
      case Environment.PROD:
        _config = _Config.prodConstants;
        break;
      case Environment.UIT:
        _config = _Config.uitConstants;
        break;
    }
  }

  static get BASE_URL {
    return _config[_Config.BASE_URL];
  }

  static get FLAVOR_NAME {
    return _config[_Config.FLAVOR_NAME];
  }

  static get CONFIG_TWO {
    return _config[_Config.CONFIG_TWO];
  }
}

class _Config {
  static const BASE_URL = "BASE_URL";
  static const FLAVOR_NAME = "FLAVOR_NAME";
  static const CONFIG_TWO = "CONFIG_TWO";

  static Map<String, dynamic> debugConstants = {
    BASE_URL: "http://125.212.229.42:3600/api/v1/",
    FLAVOR_NAME: "DEV",
    CONFIG_TWO: "abc",
  };

  static Map<String, dynamic> testConstants = {
    BASE_URL: "http://125.212.229.42:3600/api/v1/",
    FLAVOR_NAME: "TEST",
    CONFIG_TWO: "xyz",
  };

  static Map<String, dynamic> prodConstants = {
    BASE_URL: "http://125.212.229.42:3600/api/v1/",
    FLAVOR_NAME: "PROD",
    CONFIG_TWO: "mnp"
  };
  static Map<String, dynamic> uitConstants = {
    BASE_URL: "http://10.30.1.29:8765/api/v1/",
    FLAVOR_NAME: "UIT",
    CONFIG_TWO: ""
  };
}
