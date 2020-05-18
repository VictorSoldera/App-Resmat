import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceSetting {

  Future<String> getLanguage() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    final String value = pref.getString('language');
    return value;
  }

  Future<void> setLanguage(String value) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('language', value);
    return;
  }
}
