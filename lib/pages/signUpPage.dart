import 'package:flutter/material.dart';
import 'package:login_page_task/widgets/buttons.dart';
import 'package:login_page_task/widgets/textField.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
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
                  //-------------- Name TextField
                  const Text('Name'),
                  Text_Field(
                    prefixIcons: Icons.person,
                    hintText: "John Doe",
                    toggleEye: false,
                    textfieldName: "name",
                  ),
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
                ],
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            //------------------ SignUp Button
            Buttons(
              width: 350.0,
              height: 50.0,
              backGroundColor: Colors.blue,
              foreGroundColor: Colors.white,
              buttonText: "SignUp",
              icon: Container(),
              buttonUnderLine: false,
              buttonName: "signup",
              formkey: _formKey,
            ),
            const SizedBox(
              height: 20.0,
              child: Text('or'),
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
              height: 40.0,
              child: Center(
                child: Text(
                  "By signing up,you agree to our terms of service and privacy policy.",
                  textAlign: TextAlign.center,
                ),
              ),
            ),

            // ----------------Check Have an Account or not Button
            Buttons(
              width: 350.0,
              height: 50.0,
              backGroundColor: Colors.white10,
              foreGroundColor: Colors.blue,
              buttonText: "Already have an Account? Log in",
              icon: Container(),
              buttonUnderLine: true,
              buttonName: "haveaccount",
              formkey: _formKey,
            ),
          ]),
        ),
      ),
    );
  }
}
