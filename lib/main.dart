import 'package:flutter/material.dart';
import 'package:login_page_task/pages/homepage.dart';
import 'package:login_page_task/pages/signInPage.dart';
// import 'package:login_page_task/pages/signInandOutPage.dart';
import 'package:login_page_task/pages/signUpPage.dart';

import 'package:login_page_task/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LoginPage Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: MyRoutes.loginPage,
      routes: {
        MyRoutes.homePage: (context) => const Homepage(),
        MyRoutes.loginPage: (context) => const SignInPage(),
        MyRoutes.signUpPage: (context) => const SignUpPage(),
      },
    );
  }
}
