import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../helpers/theme/app_colors.dart';


enum StatusBarTheme {
  light,
  dark,
}

class PageContainer extends StatelessWidget {
  final Color statusBarColor;
  final StatusBarTheme statusBarTheme;
  final Color stautsBarForegroundColor;
  final Widget child;
  final bool top;
  final bool bottom;
  final bool right;
  final bool left;

  const PageContainer({
    Key? key,
    required this.child,
    this.statusBarColor = mainColor,
    this.statusBarTheme = StatusBarTheme.light,
    this.stautsBarForegroundColor = Colors.transparent,
    this.top =true,
    this.bottom = true,
    this.left = true,
    this.right = true



  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: statusBarColor,
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarColor: stautsBarForegroundColor,
          statusBarIconBrightness: _andriod(),
          statusBarBrightness: _ios(),
        ),
        child: SafeArea(
          top: top,
          bottom: bottom,
          right: right,
          left: left,
          child: GestureDetector(
            onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
            child: child,
          ),
        ),
      ),
    );
  }

  Brightness _andriod() {
    switch (statusBarTheme) {
      case StatusBarTheme.dark:
        return Brightness.dark;
      case StatusBarTheme.light:
        return Brightness.light;
    }
  }

  Brightness _ios() {
    switch (statusBarTheme) {
      case StatusBarTheme.dark:
        return Brightness.light;
      case StatusBarTheme.light:
        return Brightness.dark;
    }
  }
}
