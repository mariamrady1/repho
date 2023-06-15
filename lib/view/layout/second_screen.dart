import 'package:e_car/helpers/theme/app_colors.dart';
import 'package:flutter/material.dart';

import '../../helpers/theme/sizes.dart';
import '../custom_widget/ui_element/button_widget/elevates_button_widget.dart';
import '../custom_widget/ui_element/custom_appbar_home.dart';
import 'test_screen.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});
  static const routeName = 'SecondScreen';

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: const CustomAppBar(
        text: 'About Disease',
        auto: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding:
              const EdgeInsets.symmetric(vertical: MySizes.horizontalMargin),
          child: Directionality(
            textDirection: TextDirection.ltr,
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  // decoration:
                  //     const BoxDecoration(color: Color.fromARGB(82, 55, 59, 143)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Kidney disease',
                        style: TextStyle(fontSize: 40, color: mainColor),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Container(
                        height: 300,
                        // width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                            horizontal: MySizes.horizontalMargin / 2,
                            vertical: MySizes.horizontalMargin),
                        margin: const EdgeInsets.only(
                            bottom: MySizes.verticalMargin * 2),
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(82, 151, 151, 155),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(35),
                            topRight: Radius.circular(35),
                          ),
                          // color: whiteColor,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.flag,
                                  color: Colors.orange.shade900,
                                ),
                                const SizedBox(
                                  width: 3,
                                ),
                                const Expanded(
                                  child: Text(
                                      'The AI-based kidney disease detection system is an integrated system that uses advanced technology to analyze and diagnose multiple cases of kidney disease.'),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.flag,
                                  color: Colors.orange.shade900,
                                ),
                                const SizedBox(
                                  width: 3,
                                ),
                                const Expanded(
                                  child: Text(
                                      'This system aims to provide an accurate and effective way to detect kidney problems early and direct people to appropriate intervention and treatment early.'),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.flag,
                                  color: Colors.orange.shade900,
                                ),
                                const SizedBox(
                                  width: 3,
                                ),
                                const Expanded(
                                  child: Text(
                                      'System elements used include artificial intelligence and machine learning to analyze kidney data and identify possible patterns and signs of disease.'),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: MySizes.horizontalMargin / 2),
                  child: ElevatedButtonWidget(
                      title: "Test Screen",
                      onTap: (() {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HealthForm()));
                      })),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
