import 'package:flutter/material.dart';
import 'package:login_noruzi/assets/colors.dart';

class TextFormWidget extends StatelessWidget {
  final IconData prefixicon;
  final IconData? suffixicon;
  final String lableText;
  final bool obscureText;
  const TextFormWidget(
      {Key? key,
      required this.prefixicon,
      required this.lableText,
      this.suffixicon,
      this.obscureText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
          filled: true,
          // fillColor: ,

          prefixIcon: Icon(
            prefixicon,
            color: blueColor,
          ),
          suffixIcon: Icon(
            suffixicon,
            color: blueColor,
          ),
          labelText: lableText,
          labelStyle: TextStyle(color: blueColor),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: blueColor),
              borderRadius: BorderRadius.circular(15))),
    );
  }
}
