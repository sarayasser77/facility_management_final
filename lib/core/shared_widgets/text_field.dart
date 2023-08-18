import 'package:facility_management/constants.dart';
import 'package:flutter/material.dart';

Widget defaultText({
  TextEditingController? controller ,
  required TextInputType type,
  Function(String)? onChange,
  FormFieldValidator? validate,
  String? hint ,
  Widget? prefixIcon,
  bool isObscure = false,
  IconData? suffix,
  Function()? pressed,
  bool? enable,
  int? lines,
  String? prefixImageAsset,
  double?borderWidth,
  int?maxLines,
}) => TextFormField(

  minLines: maxLines,
  enabled: enable,
  controller: controller,
  obscureText: isObscure,
  decoration:  InputDecoration(
    hintStyle: TextStyle(color: LIGHT_GREY),
    hintText: hint,
    prefixIcon: prefixImageAsset != null // Use prefixImageAsset to conditionally show the image
        ? Image.asset(
      prefixImageAsset,
      width: 24, // Set the width of the image as per your requirement
      height: 24, // Set the height of the image as per your requirement
    )
        : prefixIcon,
    suffixIcon: suffix!=null ? IconButton(
      onPressed: pressed,
      icon: Icon(
        suffix,
      ),
    )
        : null,
    border:  OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
      )
    ),
    enabledBorder: OutlineInputBorder(

      borderSide: BorderSide(
        width: borderWidth!
      )
    )
  ),
  keyboardType: type,
  onChanged: onChange,
  validator: validate,
  maxLines: lines ,
);