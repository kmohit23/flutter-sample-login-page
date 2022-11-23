// import 'package:flutter/material.dart';
// import 'package:login_page_task/utils/routes.dart';
// import 'package:login_page_task/widgets/buttons.dart';
// import 'package:login_page_task/widgets/textField.dart';

// class SignInandOutPage extends StatefulWidget {
//   const SignInandOutPage({super.key});

//   @override
//   State<SignInandOutPage> createState() => _SignInandOutPageState();
// }

// class _SignInandOutPageState extends State<SignInandOutPage> {
//   final _formKey = GlobalKey<FormState>();

//   bool togglePage = true;
//   void update(bool toggle) {
//     setState(() {
//       togglePage ? togglePage = false : togglePage = true;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: Form(
//         key: _formKey,
//         child: Padding(
//           padding: const EdgeInsets.all(10.0),
//           child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//             // Heading of SignIn/SignUp Page
//             Text.rich(TextSpan(
//                 style: const TextStyle(
//                   fontSize: 30.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//                 children: [
//                   const TextSpan(text: 'Smarter'),
//                   const TextSpan(
//                       text: 'home', style: TextStyle(color: Colors.lightBlue)),
//                   WidgetSpan(
//                       child: Transform.translate(
//                     offset: const Offset(0.0, -20.0),
//                     child: const Text(
//                       'TM',
//                       style: TextStyle(fontSize: 5.0, color: Colors.grey),
//                     ),
//                   ))
//                 ])),
//             const SizedBox(
//               height: 40.0,
//             ),
//             //--------------- TextFormField
//             SizedBox(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   //-------------- Name TextField
//                   togglePage ? const Text('Name') : Container(),
//                   togglePage
//                       ? Text_Field(
//                           prefixIcons: Icons.person,
//                           hintText: "John Doe",
//                           toggleEye: false,
//                           textfieldName: "name",
//                         )
//                       : Container(),
//                   // -------------Email TextField
//                   const Text('Email'),
//                   Text_Field(
//                     prefixIcons: Icons.email,
//                     hintText: "name@example.com",
//                     toggleEye: false,
//                     textfieldName: "email",
//                   ),
//                   // ----------------Password TextField
//                   const Text('Password'),
//                   Text_Field(
//                     prefixIcons: Icons.lock,
//                     hintText: "Password",
//                     toggleEye: true,
//                     textfieldName: "password",
//                   ),
//                   //------------- Forget Password Text button
//                   togglePage
//                       ? Container()
//                       : TextButton(
//                           style: TextButton.styleFrom(
//                               splashFactory: NoSplash.splashFactory),
//                           onPressed: () {
//                             Navigator.pushNamed(
//                                 context, MyRoutes.forgetPassword);
//                           },
//                           child: const Text(
//                             'Forget Password?',
//                             style: TextStyle(
//                               color: Colors.blueAccent,
//                               fontWeight: FontWeight.bold,
//                               decoration: TextDecoration.underline,
//                             ),
//                           )),
//                 ],
//               ),
//             ),
//             const SizedBox(
//               height: 5.0,
//             ),
//             //------------------ SignUp/Login Button
//             Buttons(
//               backGroundColor: Colors.blue,
//               foreGroundColor: Colors.white,
//               buttonText: togglePage ? "Sign Up" : "Log In",
//               icon: Container(),
//               buttonUnderLine: false,
//               togglepage: update,
//               buttonName: "login",
//               formkey: _formKey,
//             ),
//             const SizedBox(
//               height: 20.0,
//               child: Text('or'),
//             ),
//             // ------------------SignIn with Apple Button
//             Buttons(
//               backGroundColor: Colors.black,
//               foreGroundColor: Colors.white,
//               buttonText: "Sign in with Apple",
//               icon: const Icon(Icons.apple),
//               buttonUnderLine: false,
//               togglepage: update,
//               buttonName: "apple",
//               formkey: _formKey,
//             ),
//             // -------------------SignIn with Google Button
//             Buttons(
//               backGroundColor: Colors.black26,
//               foreGroundColor: Colors.black,
//               buttonText: "Sign in with Google",
//               icon: SizedBox(
//                 height: 20.0,
//                 width: 20.0,
//                 child: Image.asset(
//                   "assets/images/googleicon.png",
//                   fit: BoxFit.fill,
//                 ),
//               ),
//               buttonUnderLine: false,
//               togglepage: update,
//               buttonName: "google",
//               formkey: _formKey,
//             ),
//             togglePage
//                 ? const SizedBox(
//                     height: 40.0,
//                     child: Center(
//                       child: Text(
//                         "By signing up,you agree to our terms of service and privacy policy.",
//                         textAlign: TextAlign.center,
//                       ),
//                     ),
//                   )
//                 : Container(),
//             // ----------------Check Have an Account or not Button
//             Buttons(
//               backGroundColor: Colors.white10,
//               foreGroundColor: Colors.blue,
//               buttonText: togglePage
//                   ? "Already have an account?Log in"
//                   : "Don't have an account?Sign up",
//               icon: Container(),
//               buttonUnderLine: true,
//               togglepage: update,
//               buttonName: "checkAccount",
//               formkey: _formKey,
//             ),
//           ]),
//         ),
//       ),
//     );
//   }
// }
