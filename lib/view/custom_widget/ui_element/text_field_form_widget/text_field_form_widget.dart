import 'package:flutter/material.dart';

import '../../../../helpers/theme/app_colors.dart';
import '../../../../helpers/theme/sizes.dart';
import '../../../../helpers/theme/style.dart';

class CustomTextFormField extends StatefulWidget {
  final String? prefixImage;
  final double? prefixImagesScale;
  final TextEditingController? controller;
  final String? hintText;
  final String? suffixImage;
  final TextInputType? textInputType;
  final double? suffImageScal;
  final void Function()? suffixOnTap;
  final bool? obscureText;
  final int? maxLine;
  final String? Function(String?)? validator;
  final AutovalidateMode validateType;

  const CustomTextFormField(
      {Key? key,
      this.prefixImage,
      this.prefixImagesScale,
      this.controller,
      this.hintText,
      this.suffixImage,
      this.textInputType,
      this.suffImageScal,
      this.suffixOnTap,
      this.obscureText,
      this.maxLine,
      this.validator,
      this.validateType = AutovalidateMode.onUserInteraction})
      : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: TextFormField(
          keyboardType: widget.textInputType,
          controller: widget.controller,
          focusNode: _focusNode,
          validator: widget.validator,
          autovalidateMode: widget.validateType,
          obscureText: widget.obscureText ?? false,
          maxLines: widget.maxLine ?? 1,
          decoration: InputDecoration(
            fillColor: const Color(0xffFAFAFA),
            filled: true,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: MySizes.verticalMargin),
            hintText: widget.hintText,
            hintStyle: textFormFieldStyle,
            prefixIcon: widget.prefixImage != null
                ? Container(
                    margin: const EdgeInsetsDirectional.only(start: 2.5),
                    width: 8,
                    height: 8,
                    padding: const EdgeInsets.all(1),
                    child: Image.asset(
                      widget.prefixImage!,
                      scale: widget.prefixImagesScale,
                      color: _focusNode.hasFocus ? mainColor : secondColor,
                    ),
                  )
                : null,
            suffixIcon: widget.suffixImage != null
                ? InkWell(
                    onTap: widget.suffixOnTap,
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    child: Container(
                        margin: const EdgeInsetsDirectional.only(end: 2.5),
                        padding: const EdgeInsets.all(1),
                        child: Image.asset(
                          widget.suffixImage!,
                          scale: widget.suffImageScal,
                          color:
                              _focusNode.hasFocus ? secondColor : unFocusColor,
                        )

                        
                        ),
                  )
                : null,
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7),
              borderSide: const BorderSide(color: Colors.red),
              gapPadding: 10,
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7),
              borderSide: const BorderSide(color: Colors.red),
              gapPadding: 10,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7),
              borderSide: const BorderSide(color: Color(0xffC6C2C4)),
              gapPadding: 10,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7),
              borderSide: const BorderSide(color: Color(0xffC6C2C4)),
              gapPadding: 10,
            ),
          ),
          style: textFormFieldStyle.copyWith()),
    );
  }
}
