import 'package:flutter/material.dart';
import '../../../../helpers/theme/app_colors.dart';
import '../../../../helpers/theme/sizes.dart';
import '../../../../helpers/theme/style.dart';
import '../../../../helpers/utils/common_methods.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final String title;
  final void Function() onTap;
  final Color? colorBackground;
  final Color? textColor;
  final Color? borderColor;
  final double? height;

  const ElevatedButtonWidget({
    super.key,
    required this.title,
    required this.onTap,
    this.colorBackground = mainColor,
    this.textColor = whiteColor,
    this.borderColor = mainColor,
    this.height = 54,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      margin: const EdgeInsets.only(
        bottom: MySizes.verticalMargin,
       
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: colorBackground!,
          border: Border.all(color: borderColor!, width: 1)),
      child: InkWell(
        onTap: onTap,
        child: Center(
          child: Text(title,
              style: buttonStyle.copyWith(
                  color: textColor,
                  fontFamily: CommonMethods.fontFamily(context))),
        ),
      ),
    );
  }
}
