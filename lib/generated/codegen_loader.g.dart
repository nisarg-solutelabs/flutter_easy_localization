// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en_IN = {
  "my_name_is_nisarg": "My name is Nisarg"
};
static const Map<String,dynamic> gu_IN = {
  "my_name_is_nisarg": "મારું નામ નિસર્ગ છે."
};
static const Map<String,dynamic> hi_IN = {
  "my_name_is_nisarg": "मेरा नाम निसर्ग है"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en_IN": en_IN, "gu_IN": gu_IN, "hi_IN": hi_IN};
}
