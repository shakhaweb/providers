
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

Future<void> saveThemeToHive(ThemeData theme) async {
  var box = await Hive.openBox('themeBox');
  await box.put('isDarkTheme', theme == ThemeData.dark());
}

Future<ThemeData> getThemeFromHive() async {
  var box = await Hive.openBox('themeBox');
  bool isDarkTheme = box.get('isDarkTheme') ?? false;
  return isDarkTheme ? ThemeData.dark() : ThemeData.light();
}