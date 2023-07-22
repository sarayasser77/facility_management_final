import 'package:facility_management/core/shared_widgets/appbar2.dart';
import 'package:facility_management/features/payment/presentation/views/widgets/pay_body.dart';
import 'package:flutter/material.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarButtom2(text: 'Payment',),
      body: PayBody(),
    );
  }
}
