import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static late SharedPreferences _prefs;

  static int _ultras = 0;
  static int _legendarios = 0;
  static int _epicos = 0;
  static int _comunes = 0;

  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static int get ultras {
    return _prefs.getInt('ultras') ?? _ultras;
  }

  static set ultras(int ult) {
    _ultras = ult;
    _prefs.setInt('ultras', _ultras);
  }

  static int get legendarios {
    return _prefs.getInt('legendarios') ?? _legendarios;
  }

  static set legendarios(int leg) {
    _legendarios = leg;
    _prefs.setInt('legendarios', _legendarios);
  }

  static int get epicos {
    return _prefs.getInt('epicos') ?? _epicos;
  }

  static set epicos(int epic) {
    _epicos = epic;
    _prefs.setInt('epicos', _epicos);
  }

  static int get comunes {
    return _prefs.getInt('comunes') ?? _comunes;
  }

  static set comunes(int com) {
    _comunes = com;
    _prefs.setInt('comunes', _comunes);
  }
}
