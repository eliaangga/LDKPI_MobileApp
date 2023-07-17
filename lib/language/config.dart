import 'package:shared_preferences/shared_preferences.dart';

class ConfigLanguage {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<String> getBahasaPref() async {
    String currentLanguage = '';
    final SharedPreferences pref = await _prefs;
    currentLanguage = pref.getString('bahasa') ?? 'id';
    return currentLanguage;
  }

  Future<void> setBahasaPref(String newLanguage) async {
    final SharedPreferences pref = await _prefs;
    pref.setString('bahasa', newLanguage);
  }
}
