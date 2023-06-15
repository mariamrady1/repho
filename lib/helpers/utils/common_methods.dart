import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;
class CommonMethods{
    static bool isRTL(BuildContext context) {
    return intl.Bidi.isRtlLanguage(context.locale.languageCode);
  }

  static String fontFamily(BuildContext context) {
    return 'TajawalRegular';
  }

    static String translateApi({
    required String ar,
    required String en,
    required BuildContext context,
  }) {
    String text = '';
    switch (context.locale.languageCode) {
      case 'ar':
        text = ar;
        break;
      case 'en':
        text = en;
        break;
    }
    return text;
  }

  static void doWhenLang({
    required VoidCallback ar,
    required VoidCallback en,
    required BuildContext context,
  }) {
    switch (context.locale.languageCode) {
      case 'ar':
        ar.call();
        break;
      case 'en':
        en.call();
        break;
    }
  }
}