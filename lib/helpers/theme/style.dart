import 'package:e_car/helpers/theme/app_colors.dart';
import 'package:flutter/material.dart';

import '../utils/common_methods.dart';

ThemeData appThemeDate(BuildContext context) {
  return ThemeData(
    primaryColor: mainColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    hintColor: hintColor,
    brightness: Brightness.light,
    buttonTheme: const ButtonThemeData(
      buttonColor: mainColor,
    ),
    bottomSheetTheme: const BottomSheetThemeData(backgroundColor: Colors.white),
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: mainColor,
      secondary: secondColor,
    ),
    appBarTheme: const AppBarTheme(
        color: scaffoldColor, elevation: 0, centerTitle: true),
    scaffoldBackgroundColor: Colors.transparent,
    backgroundColor: Colors.transparent,
    fontFamily: CommonMethods.fontFamily(context),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: mainColor,
    ),
  );
}

const TextStyle buttonStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w600,
  color: mainColor,
);
const TextStyle textFormFieldStyle = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w400,
  color: borderColor,
);

const TextStyle labelFieldStyle = TextStyle(
  fontSize: 17,
  fontWeight: FontWeight.w400,
  color: Colors.black,
);
const TextStyle textTimeStyle = TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.w700,
  color: blackColor,
);
const TextStyle textB20B = TextStyle(
  fontSize: 25,
  fontWeight: FontWeight.bold,
  fontStyle: FontStyle.italic,
  color: mainColor,
);
const TextStyle textS18B = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w700,
  color: secondColor,
);
const TextStyle textG17R = TextStyle(
  fontSize: 17,
  fontWeight: FontWeight.w400,
  color: greyColor,
);
const TextStyle textW17SB = TextStyle(
  fontSize: 17,
  fontWeight: FontWeight.w600,
  color: whiteColor,
);
const TextStyle textP16R = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w400,
  color: preTextColor,
);
const TextStyle textB15R = TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.w400,
  color: blackColor,
);
const TextStyle textS15SB = TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.w600,
  color: secondColor,
);
const TextStyle textB14SB = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w600,
  color: blackColor,
);
const TextStyle textWG14SR = TextStyle(
  fontSize: 13,
  fontWeight: FontWeight.w400,
  color: weakGreyColor,
);
const TextStyle textNavigatorBar = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w500,
);

const TextStyle textS12R = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w400,
  color: secondColor,
);
const TextStyle textEG10R = TextStyle(
  fontSize: 10,
  fontWeight: FontWeight.w400,
  color: extraGreyColor,
);
