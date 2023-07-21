import 'package:flutter/material.dart';

import '../utilies/styles.dart';


class CustomButton extends StatelessWidget {
  const CustomButton(
      {
        Key? key,
        required this.backgroundColor,
        required this.textColor,
        this.borderRadius,
        required this.text,
        this.fontSized,
        this.func,
         this.borderColor =kPrimaryColor,
       required this.func,
      })
      : super(key: key);

  final Color backgroundColor;
  final Color borderColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final double? fontSized;
  final String text;
  final VoidCallback? func;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: func,
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 30 , vertical: 8),
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: borderColor),
            borderRadius: borderRadius ?? BorderRadius.circular( 12,),
          ),
        ),
        child: Text(
          text,
          style: Styles.textStyle15.copyWith(
            color: textColor,
            fontSize: fontSized,
          ),
        ),
      ),
    );
  }
}