import 'package:shared_preferences/shared_preferences.dart';

class Prefrences {
  static SharedPreferences? _preferences;

  Future<Prefrences> init() async {
    _preferences = await SharedPreferences.getInstance();
    return this;
  }

  Prefrences._internal() {
    init();
  }

  static final Prefrences _instance = Prefrences._internal();
  factory Prefrences() => _instance;

// H.W => Singelton design patern in flutter


  Future<void> setString(key, value) async {
    _preferences == null
        ? SharedPreferences.getInstance()
        .then((p) async {
            await p.setString(key, value);
          })
        : await _preferences!.setString(key, value);
  }

  String? getString(key) {
    String str = '';
    _preferences == null
        ? SharedPreferences.getInstance().then((p) {
            str = p.getString(key) ?? '';
          })
        : str = _preferences!.getString(key) ?? '';
    return str;
  }


  double? getDouble(key) {
    double dbl = 0;
    _preferences == null
        ? SharedPreferences.getInstance().then((p) {
      dbl = p.getDouble(key) ?? 0;
    })
        : dbl = _preferences!.getDouble(key) ?? 0;
    return dbl;
  }


  Future<void> setDouble(key, value) async {
    _preferences == null
        ? SharedPreferences.getInstance().then((p) async {
      await p.setDouble(key, value);
    })
        : await _preferences!.setDouble(key, value);
  }

  Future<void> setInt(key, value) async {
    _preferences == null
        ? SharedPreferences.getInstance().then((p) async {
            await p.setInt(key, value);
          })
        : await _preferences!.setInt(key, value);
  }

  int? getInt(key) {
    int i = 0;
    _preferences == null
        ? SharedPreferences.getInstance().then((p) {
            i = p.getInt(key) ?? 0;
          })
        : i = _preferences!.getInt(key) ?? 0;
    return i;
  }

  Future<void> setBool(key, value) async {
    _preferences == null
        ? SharedPreferences.getInstance().then((p) async {
            await p.setBool(key, value);
          })
        : await _preferences!.setBool(key, value);
  }

  bool? getBool(key) {
    bool v = false;
    _preferences == null
        ? SharedPreferences.getInstance().then((p) {
            v = p.getBool(key) ?? false;
          })
        : v = _preferences!.getBool(key) ?? false;
    return v;
  }

  void clear() async {
    _preferences == null
        ? SharedPreferences.getInstance().then((p) => p.clear())
        : await _preferences!.clear();
    // GetStorage().erase();
    // Get.offAll(() => const SplashScreen());
  }
}