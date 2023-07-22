import 'package:facility_management/core/shared_widgets/button_appbar.dart';
import 'package:facility_management/features/auth/presentation/views/widgets/register_body.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarButtom(),
        body: RegisterBody(),
      ),
    );
  }
}
