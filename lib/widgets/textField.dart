import 'package:flutter/material.dart';
import 'package:validators/validators.dart';

class Text_Field extends StatefulWidget {
  IconData prefixIcons;
  String hintText;
  String textfieldName;
  bool toggleEye;
  // IconData suffixIcons;
  Text_Field(
      {super.key,
      required this.prefixIcons,
      required this.hintText,
      required this.toggleEye,
      required this.textfieldName});

  @override
  State<Text_Field> createState() => _Text_FieldState();
}

class _Text_FieldState extends State<Text_Field> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        validator: (value) {
          switch (widget.textfieldName) {
            case 'name':
              if (value!.isEmpty) {
                return "Name Cannot be Empty";
              } else if (value.length < 6) {
                return "Name Should be atleast 6 Characters";
              } else if (RegExp(r'^\s|\s$').hasMatch(value)) {
                return "Name Should not have white spaces in starting for ending";
              }
              break;
            case 'email':
              if (!isEmail(value!)) {
                return "Invalid Email";
              }
              break;
            case 'password':
              if (value!.isEmpty) {
                return "Password cannot be Empty";
              } else if (value.length < 6) {
                return "Password should be minimum 6 Characters";
              } else if (RegExp(r'\s').hasMatch(value)) {
                return "Cannot have white Spaces";
              } else if (!RegExp(
                      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                  .hasMatch(value)) {
                return "Should Contain Capital Letter,Small Letter,Number and Special Character";
              }
              break;
          }
          return null;
        },
        obscureText:
            widget.textfieldName == 'password' ? widget.toggleEye : false,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey.shade300,
            prefixIcon: Icon(widget.prefixIcons),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: BorderSide.none),
            hintText: widget.hintText,
            suffixIcon: widget.textfieldName == "password"
                ? IconButton(
                    splashRadius: 5.0,
                    onPressed: () {
                      setState(() {
                        widget.toggleEye
                            ? widget.toggleEye = false
                            : widget.toggleEye = true;
                      });
                    },
                    icon: Icon(widget.toggleEye
                        ? Icons.visibility_off
                        : Icons.visibility),
                  )
                : null),
      ),
    );
  }
}
