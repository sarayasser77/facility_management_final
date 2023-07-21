import 'package:facility_management/core/utilies/styles.dart';
import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
  const CustomButton(
      {
        Key? key,
        required this.backgroundColor,
        this.textColor,
        this.borderRadius,
        required this.text,
        this.fontSized,
       required this.func,
        this.isChecked,
      })
      : super(key: key);

  final Color backgroundColor;
  final Color? textColor;
  final BorderRadius? borderRadius;
  final double? fontSized;
  final String text;
  final VoidCallback func;
  final bool? isChecked;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width*.7,
        height: 48,
        child: ElevatedButton(
          onPressed: func,
          child: Text(
            text,
            style: Styles.textStyle15.copyWith(color: Colors.white),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            padding: EdgeInsets.symmetric(horizontal: 30 , vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular( 8,),
            ),
                     // minimumSize: Size(150, 50),
                   ),
                 ),
      ),
    );
  }
}