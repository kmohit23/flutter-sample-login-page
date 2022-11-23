import 'package:flutter/material.dart';
import 'package:login_page_task/utils/routes.dart';

class Buttons extends StatelessWidget {
  double width;
  double height;
  Color backGroundColor;
  Color foreGroundColor;
  Widget icon;
  bool buttonUnderLine;
  String buttonText;
  String buttonName;
  // ValueChanged<bool> togglepage;
  GlobalKey<FormState> formkey;
  Buttons(
      {super.key,
      required this.width,
      required this.height,
      required this.backGroundColor,
      required this.foreGroundColor,
      required this.buttonText,
      required this.icon,
      required this.buttonUnderLine,
      // required this.togglepage,
      required this.buttonName,
      required this.formkey});
  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
          splashFactory: buttonUnderLine ? NoSplash.splashFactory : null,
          backgroundColor: backGroundColor,
          foregroundColor: foreGroundColor,
          minimumSize: Size(width, height),
          textStyle: const TextStyle(fontWeight: FontWeight.bold),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        ),
        onPressed: () {
          switch (buttonName) {
            case "login":
              if (formkey.currentState!.validate()) {
                Navigator.pushReplacementNamed(context, MyRoutes.homePage);
              }
              break;
            case "signup":
              if (formkey.currentState!.validate()) {
                Navigator.pushReplacementNamed(context, MyRoutes.homePage);
              }
              break;
            case "apple":
              print('loggedin using apple id');
              break;
            case "google":
              print('LoggedIn using google');
              break;
            case "haveaccount":
              Navigator.pushReplacementNamed(context, MyRoutes.loginPage);
              break;
            case "noaccount":
              Navigator.pushReplacementNamed(context, MyRoutes.signUpPage);
              break;
            case "sendemail":
              print(buttonText);
              break;
            case "cancel":
              break;
            // case "checkAccount":
            //   buttonUnderLine ? togglepage(false) : null;
            //   break;
          }
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            const SizedBox(
              width: 10.0,
            ),
            Text(
              buttonText,
              style: TextStyle(
                  color: buttonUnderLine ? Colors.blue : null,
                  decoration: buttonUnderLine
                      ? TextDecoration.underline
                      : TextDecoration.none),
            ),
          ],
        ));
  }
}
