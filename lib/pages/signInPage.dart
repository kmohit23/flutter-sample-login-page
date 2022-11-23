import 'package:flutter/material.dart';
import 'package:login_page_task/widgets/buttons.dart';
import 'package:login_page_task/widgets/textField.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            // Heading of SignIn/SignUp Page
            Text.rich(TextSpan(
                style: const TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  const TextSpan(text: 'Smarter'),
                  const TextSpan(
                      text: 'home', style: TextStyle(color: Colors.lightBlue)),
                  WidgetSpan(
                      child: Transform.translate(
                    offset: const Offset(0.0, -20.0),
                    child: const Text(
                      'TM',
                      style: TextStyle(fontSize: 5.0, color: Colors.grey),
                    ),
                  ))
                ])),
            const SizedBox(
              height: 40.0,
            ),
            //--------------- TextFormField
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // -------------Email TextField
                  const Text('Email'),
                  Text_Field(
                    prefixIcons: Icons.email,
                    hintText: "name@example.com",
                    toggleEye: false,
                    textfieldName: "email",
                  ),
                  // ----------------Password TextField
                  const Text('Password'),
                  Text_Field(
                    prefixIcons: Icons.lock,
                    hintText: "Password",
                    toggleEye: true,
                    textfieldName: "password",
                  ),
                  TextButton(
                      style: TextButton.styleFrom(
                        splashFactory: NoSplash.splashFactory,
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () {
                        showModalBottomSheet(
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20.0),
                                    topRight: Radius.circular(20.0))),
                            context: context,
                            isScrollControlled: true,
                            builder: (context) {
                              return Padding(
                                padding: EdgeInsets.only(
                                    bottom: MediaQuery.of(context)
                                        .viewInsets
                                        .bottom),
                                child: Container(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const Text(
                                          'Reset Password',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          height: 15.0,
                                        ),
                                        const Text(
                                          'Please enter your email address.We will send you an email to reset your password.',
                                          textAlign: TextAlign.center,
                                        ),
                                        const SizedBox(
                                          height: 10.0,
                                        ),
                                        const Text(
                                          'Email',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text_Field(
                                            prefixIcons: Icons.message,
                                            hintText: "name@example.com",
                                            toggleEye: false,
                                            textfieldName: "email"),
                                        const SizedBox(
                                          height: 15.0,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Buttons(
                                                width: 150.0,
                                                height: 50.0,
                                                backGroundColor: Colors.black12,
                                                foreGroundColor: Colors.black,
                                                buttonText: "Cancel",
                                                icon: Container(),
                                                buttonUnderLine: false,
                                                buttonName: 'cancel',
                                                formkey: _formKey),
                                            Buttons(
                                                width: 150.0,
                                                height: 50.0,
                                                backGroundColor:
                                                    Colors.blue.shade300,
                                                foreGroundColor: Colors.white,
                                                buttonText: "Send Email",
                                                icon: Container(),
                                                buttonUnderLine: false,
                                                buttonName: 'sendemail',
                                                formkey: _formKey)
                                          ],
                                        )
                                      ]),
                                ),
                              );
                            });
                      },
                      child: const Text(
                        'Forget Password?',
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            //------------------ Login Button
            Buttons(
              width: 350.0,
              height: 50.0,
              backGroundColor: Colors.blue,
              foreGroundColor: Colors.white,
              buttonText: "Log In",
              icon: Container(),
              buttonUnderLine: false,
              buttonName: "login",
              formkey: _formKey,
            ),
            const SizedBox(
              height: 50.0,
              child: Center(
                child: Text(
                  'or',
                ),
              ),
            ),
            // ------------------SignIn with Apple Button
            Buttons(
              width: 350.0,
              height: 50.0,
              backGroundColor: Colors.black,
              foreGroundColor: Colors.white,
              buttonText: "Sign in with Apple",
              icon: const Icon(Icons.apple),
              buttonUnderLine: false,
              buttonName: "apple",
              formkey: _formKey,
            ),
            const SizedBox(
              height: 20.0,
            ),
            // -------------------SignIn with Google Button
            Buttons(
              width: 350.0,
              height: 50.0,
              backGroundColor: Colors.black26,
              foreGroundColor: Colors.black,
              buttonText: "Sign in with Google",
              icon: SizedBox(
                height: 20.0,
                width: 20.0,
                child: Image.asset(
                  "assets/images/googleicon.png",
                  fit: BoxFit.fill,
                ),
              ),
              buttonUnderLine: false,
              buttonName: "google",
              formkey: _formKey,
            ),
            const SizedBox(
              height: 20.0,
            ),
            const SizedBox(
              height: 40.0,
              child: Center(
                child: Text(
                  "By signing up,you agree to our terms of service and privacy policy.",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            // ----------------Check Have an Account or not Button
            Buttons(
              width: 350.0,
              height: 50.0,
              backGroundColor: Colors.white10,
              foreGroundColor: Colors.white,
              buttonText: "Dont't have an account? Sign up",
              icon: Container(),
              buttonUnderLine: true,
              buttonName: "noaccount",
              formkey: _formKey,
            ),
          ]),
        ),
      ),
    );
  }
}
