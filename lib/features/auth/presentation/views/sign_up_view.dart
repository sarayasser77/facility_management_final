import 'package:facility_management/features/auth/presentation/views/widgets/sign_up_body.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SignBody(),
      ),
    );
  }
}
