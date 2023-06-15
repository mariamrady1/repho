
import 'package:e_car/data/dummy_data.dart';
import 'package:e_car/view/layout/home_screen.dart';
import 'package:e_car/view/layout/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'helpers/images/app_images.dart';

class LogInPage extends StatelessWidget {
   LogInPage({Key? key}) : super(key: key);

  String email = '';
  String password = '';
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String logIn() {

    Map<String,dynamic> user = DummyData.users.
    firstWhere((element) => element['email']==email,
        orElse:<Map>()=>{
      'email':''
    });
    if(user['email']==''){
      return 'please enter a correct email';
    }else if(user['password']!= password){
        return "please enter a correct password";
    }else{
      return 'Success';
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon:const Icon(Icons.arrow_back,color: Colors.black,),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                // const SizedBox(
                //   height: 20,
                // ),
                Container(
                  alignment: Alignment.topCenter,
                  height: 200,
                  child: Image.asset(
                      AppImages.img
                    ,fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.blue.shade900,
                            fontWeight: FontWeight.bold,
                            fontSize: 34,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 8),
                          width: 60,
                          height: 4,
                          color: Colors.blue.shade900,
                          alignment: Alignment.centerLeft,
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.blue.shade900,
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 50, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          launchUrl(Uri.parse('https://flutter.dev/'),
                              mode: LaunchMode.inAppWebView
                          );
                        },
                        child: Card(
                          elevation: 10,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            alignment: Alignment.center,
                            width: 50,
                            height: 50,
                            child: Image.asset(
                                AppImages.facebook
                              ,fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          launchUrl(Uri.parse('https://flutter.dev/'),
                              mode: LaunchMode.inAppWebView
                          );
                        },
                        child: Card(
                          elevation: 10,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            alignment: Alignment.center,
                            width: 50,
                            height: 50,
                            child: Image.asset(
                                AppImages.google
                                    ,fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          launchUrl(Uri.parse('https://flutter.dev/'),
                              mode: LaunchMode.inAppWebView
                          );
                        },
                        child: Card(
                          elevation: 10,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            alignment: Alignment.center,
                            width: 50,
                            height: 50,
                            child: Image.asset(
                                AppImages.twitter
                              ,fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Center(
                  child: Text(
                    'OR',
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Material(
                  elevation: 10,
                  child: TextField(
                    controller: emailController,
                    decoration:InputDecoration(
                        labelText: 'Email',
                        prefixIcon: Container(
                          margin: const EdgeInsets.symmetric(vertical: 8,horizontal: 15),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(Icons.email),
                              Container(
                                margin: const EdgeInsets.only(left: 6),
                                width: 2,
                                height: 20,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        )
                    ) ,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Material(
                  elevation: 10,
                  child: TextField(
                    controller: passwordController,
                    decoration:InputDecoration(
                        labelText: 'Password',
                        prefixIcon: Container(
                          margin: const EdgeInsets.symmetric(vertical: 8,horizontal: 15),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(Icons.key),
                              Container(
                                margin: const EdgeInsets.only(left: 6),
                                width: 2,
                                height: 20,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        )
                    ) ,
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: (){

                    },

                    child: const Text('Forget password'),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  width: double.infinity,
                  height: 40,
                  color: Colors.blue.shade900,
                  child: ElevatedButton(
                    onPressed: (){
                      email = emailController.text ;
                      password = passwordController.text ;
                      String logInState = logIn();
                      if(logInState == 'Success'){
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_)=> const SecondScreen())
                            , (route) => false);
                      }else{
                        showDialog(context: context, builder: (_)=> AlertDialog(
                          title: const Text('Invalid LogIn Process'),
                          content: Text(logInState),
                        ));
                      }
                    },
                    child: const Text('LOGIN'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}