
import 'package:flutter/material.dart';

class NavigatorMethods {
  static void pushNamed(BuildContext context, String routeName,
      {dynamic argumnets}) {
    Navigator.pushNamed(
      context,
      routeName,
      arguments: argumnets
    );
  }
  static void pushReplacementNamed(BuildContext context, String routeName,
      {dynamic argumnets}) {
    Navigator.pushReplacementNamed(
      context,
      routeName,
      arguments: argumnets
    );
  }
  static void pushNamedAndRemoveUntil(BuildContext context, String routeName,
      {dynamic argumnets}) {
    Navigator.pushNamedAndRemoveUntil(
      context,
      routeName,
      (route) => false,
      arguments: argumnets,
    );
  }


}
