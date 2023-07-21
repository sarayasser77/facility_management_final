import 'package:facility_management/core/utilies/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constants.dart';
import '../../../../../core/shared_widgets/custom_buttom.dart';
import '../../../../../core/shared_widgets/text_field.dart';


class RegisterBody extends StatefulWidget {
  const RegisterBody({Key? key}) : super(key: key);

  @override
  State<RegisterBody> createState() => _RegisterBodyState();
}
var emailController = TextEditingController();
var passwordController = TextEditingController();
bool isPasswordVisible = false;
class _RegisterBodyState extends State<RegisterBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:  const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Welcome! ',
                  style: Styles.textStyle27,
                ),
                const SizedBox(height: 20,),
                defaultText(
                  type: TextInputType.text,
                  hint: 'Fullname',
                ),
                const SizedBox(
                  height: 15.0,
                ),
                defaultText(
                  type: TextInputType.phone,
                  hint: 'Phone number',
                ),
                const SizedBox(
                  height: 15.0,
                ),
                defaultText(
                  type: TextInputType.emailAddress,
                  hint: 'Email ',
                  controller: emailController,
                ),
                const SizedBox(
                  height: 15.0,
                ),
                defaultText(
                    type: TextInputType.visiblePassword,
                    hint: 'Password',
                    controller: passwordController,
                    isObscure: !isPasswordVisible,
                    suffix: isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                    pressed: (){
                      setState(() {
                        isPasswordVisible = !isPasswordVisible;
                      });
                    }
                ),
                const SizedBox(
                  height: 15.0,
                ),
                defaultText(
                  type: TextInputType.text,
                  hint: 'Address ',
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Gender',
                  style: Styles.textStyle22.copyWith(fontSize: 16),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Row(
                  children: [
                  Text(
                    'Male',
                    style: Styles.textStyle22.copyWith(fontSize: 14),
                  ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [

                    Text(
                      'I agree to terms and conditions',
                      style: Styles.textStyle22.copyWith(fontSize: 13),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                CustomButton(
                  backgroundColor: kPrimaryColor,
                  text: 'Register',
                  func: () {
                    GoRouter.of(context).push('/verifyView');
                  },
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    Text(
                        'Already have an account?',
                        style: Styles.textStyle22.copyWith(fontSize: 13, color: rareColor)
                    ),
                    TextButton(
                      onPressed: (){
                        GoRouter.of(context).push(
                            '/'
                        );
                      },
                      child:  Text(
                        'Signin',
                        style: Styles.textStyle15.copyWith(fontSize: 13 , color: kPrimaryColor),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
    );
  }
}
