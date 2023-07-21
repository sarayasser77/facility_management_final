import 'package:flutter/material.dart';

Widget defaultText({
  TextEditingController? controller ,
  required TextInputType type,
  Function(String)? onChange,
  FormFieldValidator? validate,
   String? hint ,
  IconData? prefix,
  bool isObscure = false,
  IconData? suffix,
  Function()? pressed,
  bool? enable,
  int? lines,

}) => TextFormField(
  enabled: enable,
  controller: controller,
  obscureText: isObscure,
   decoration:  InputDecoration(
    hintText: hint,
    prefixIcon: Icon(prefix),
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
  ),
  keyboardType: type,
  onChanged: onChange,
  validator: validate,
  maxLines: lines ,
);