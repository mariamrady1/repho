import 'package:e_car/view/layout/auth/login/login_controller.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../helpers/images/app_images.dart';
import '../../../../helpers/locale/app_locale_key.dart';
import '../../../../helpers/theme/app_colors.dart';
import '../../../../helpers/theme/sizes.dart';
import '../../../../helpers/theme/style.dart';
import '../../../../helpers/utils/navigator_methods.dart';
import '../../../../helpers/utils/validations.dart';
import '../../../custom_widget/ui_element/button_widget/elevates_button_widget.dart';
import '../../../custom_widget/ui_element/page_container/page_container.dart';
import '../../../custom_widget/ui_element/text_field_form_widget/label_form_widget.dart';
import '../../../custom_widget/ui_element/text_field_form_widget/text_field_form_widget.dart';
import '../../home_screen.dart';
import '../../second_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static const routeName = 'LoginScreen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController? _emailController;
  TextEditingController? _passWordController;

  @override
  void initState() {
    _emailController = TextEditingController();
    _passWordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController!.dispose();
    _passWordController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageContainer(
        statusBarColor: whiteColor,
        statusBarTheme: StatusBarTheme.dark,
        child: Scaffold(
          backgroundColor: Colors.lightBlue,
            // backgroundColor: Color(0xff0d3b90),
            body: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.symmetric(
                    vertical: MySizes.verticalMargin,
                    horizontal: MySizes.horizontalMargin),
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      Text(
                        'NephroAI',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 35, color: Colors.orange.shade900),
                      ),
                      const SizedBox(
                        height: 45,
                      ),
                      const Text(
                        'Login',
                        style: textB20B,

                      ),
                      Form(
                          key: _formKey,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const LabelFormWidget(labelName: 'PassWord',),

                                CustomTextFormField(
                                  textInputType: TextInputType.emailAddress,
                                  controller: _passWordController,
                                  validator: validatePassword,
                                ),
                                // LabelFormWidget(
                                //     labelName: tr(AppLocalKey.passWord)),
                                // Consumer<LoginController>(
                                //     builder: (context, login, child) =>
                                //         CustomTextFormField(
                                //           textInputType: TextInputType.text,
                                //           controller: _passWordController,
                                //           validator: validatePassword,
                                //           suffixOnTap: () =>
                                //               login.changeScureText(),
                                //           obscureText: login.secureText,
                                //           suffixImage: AppImages.eye,
                                //         )),
                                ElevatedButtonWidget(
                                    title: 'Login',
                                    onTap: (() {
                                      if (_formKey.currentState!.validate()) {

                                      NavigatorMethods.pushNamed(
                                          context, HomeScreen.routeName);
                                      }
                                    })),
                              ]))
                    ]))));
  }
}
