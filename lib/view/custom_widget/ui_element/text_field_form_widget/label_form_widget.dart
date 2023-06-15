import 'package:flutter/material.dart';

import '../../../../helpers/theme/style.dart';

class LabelFormWidget extends StatelessWidget {
  final String labelName;
  const LabelFormWidget({super.key, required this.labelName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 10, bottom: 5, top: 20),
      child: Text(
        labelName,
        style: labelFieldStyle,

      ),
    );
  }
}
