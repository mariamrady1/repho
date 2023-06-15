import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'logIn.dart';


class IntroPage extends StatefulWidget {
  IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Container(

          margin: const EdgeInsets.only(top: 100, left: 20, right: 20, bottom: 100),
          alignment: Alignment.center,
          child: (index == 0)
              ? Column(
                  children: [
                    Text(
                      'Introduction',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(82, 151, 151, 155),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35),
                          bottomLeft: Radius.circular(35),
                          bottomRight:Radius.circular(35) ,
                        ),
                        // color: whiteColor,
                      ),
                      child: const Text(
                        '''Flutter is framework created by google. A cross-platform framework used to develop application for:
Android
iOS
Web
and Desktop
To build flutter application we make use of Dart Programming language which is also been created by google itself.
''',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const Spacer(),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          index = 1;
                        });
                      },
                      child: const Text('Skip'),
                    )
                  ],
                )
              : Column(
                  children: [
                    Text(
                      'Why Flutter for App Development',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue.shade900,


                      ),
                      textAlign:TextAlign.center,
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(82, 151, 151, 155),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35),
                          bottomLeft: Radius.circular(35),
                          bottomRight:Radius.circular(35) ,

                        ),
                        // color: whiteColor,
                      ),
                      child: const Text(
                        '''Flutter open source
Faster development Cycle
Super Productive
Ease to learn & code sharing
''',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const Spacer(),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> LogInPage()));
                      },
                      child: const Text('Start'),
                    )
                  ],
                ),
        ),
      ),
    );
  }
}
