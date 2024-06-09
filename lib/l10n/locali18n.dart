import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

I18nProvider i18nController = I18nProvider();

class I18nProvider with ChangeNotifier {
  String _languageCode = '';

  String get languageCode => languageCode;

  Future setLanguageCode(String _) async {
    _languageCode = _;
    notifyListeners();
  }
}

const String selectedLang = "selectedLang";

Future setLocaleStore(String languageCode) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString(selectedLang, languageCode);
  await i18nController.setLanguageCode(languageCode);
}

Future<Locale> getLocale(BuildContext context) async {
  final prefs = await SharedPreferences.getInstance();
  String languageCode = prefs.getString(selectedLang) ?? 'en';
  await i18nController.setLanguageCode(languageCode);

  return Locale(languageCode);
}