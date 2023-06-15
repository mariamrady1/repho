import 'package:easy_localization/easy_localization.dart';


import '../locale/app_locale_key.dart';


String? validatePhone(String? value) {
  if (value!.isEmpty) {
    return tr(AppLocalKey.validatePhoneEmpty);
  } else if (!value.startsWith(5.toString())) {
    return tr(AppLocalKey.validatePhoneStartValidator);
  } else if (value.length != 9) {
    return tr(AppLocalKey.validatePhoneValidator);
  }
  return null;
}

String? validatePassword(String? value) {
  RegExp regExp = RegExp(r"(?=.*[a-z])(?=.*[A-Z])\w+");
  if (value!.isEmpty) {
    return 'Password is required';
  } else if(value != 'MohamedRady'){
    return 'Password Worng';
  }
  return null;
}

String? validateConfirmPass({required String value1, required String value2}) {
  if (value1 != value2) {
    return tr(AppLocalKey.validatePasswordNotMatch);
  }
  return null;
}

String? validateNotEmpty(String? value) {
  if (value!.isEmpty) {
    return tr(AppLocalKey.validateFieldRequired);
  }
  return null;
}

String? validateName(String? value) {
  if (value!.isEmpty) {
    return tr(AppLocalKey.validateFieldRequired);
  } else if (value.length < 3 || value.length > 30) {
    return tr(AppLocalKey.validateNameLength);
  }
  return null;
}

String? validateEmail(String? value) {
  String pattern = r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+';
  RegExp regex = RegExp(pattern);
  if (!regex.hasMatch(value!)) {
    return tr(AppLocalKey.validateEmail);
  } else {
    return null;
  }
}
