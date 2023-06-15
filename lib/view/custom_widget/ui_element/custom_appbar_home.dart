// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../helpers/theme/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  final bool auto;
  const CustomAppBar({Key? key, required this.text, required this.auto})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final statusBarHeight = MediaQueryData.fromView(window).padding.top;
    return AppBar(
      automaticallyImplyLeading: auto,
      title: Text(text),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      centerTitle: true,
      backgroundColor: mainColor,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
