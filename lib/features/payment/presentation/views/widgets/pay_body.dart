import 'package:facility_management/constants.dart';
import 'package:facility_management/core/shared_widgets/custom_buttom.dart';
import 'package:facility_management/core/utilies/styles.dart';
import 'package:facility_management/features/payment/presentation/views/widgets/radio_buttom.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PayBody extends StatefulWidget {
  const PayBody({Key? key}) : super(key: key);

  @override
  State<PayBody> createState() => _PayBodyState();
}

class _PayBodyState extends State<PayBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       Expanded(
         flex: 2,
           child: Center(
            child: Stack(
              children: [
                Image.asset(
                  'assets/icons/Group 1060.png',
                  width: 300,
                  height: 300,
                ),
                Positioned(
                  top: 120,
                  left: 80,
                  child: Column(
                    children: [
                      Text(
                        'Total Balance',
                        style: Styles.textStyle22.copyWith(fontSize: 13 , color: Colors.white),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        '14,234.00 EGP',
                        style: Styles.textStyle20.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
           )),
        Expanded(
            flex:3 ,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      'Choose your payment method',
                    style: Styles.textStyle15.copyWith(fontSize: 18 , color: Colors.black),
                  ),
                  const RadioCheck2(),
                ],
              ),
            ),),
        Expanded(
            child: CustomButton(
              width: MediaQuery.of(context).size.width*.7,
              backgroundColor: kPrimaryColor,
              text: 'Confirm',
              func: () {
                GoRouter.of(context).push('/successView',);
              },
            ),),
      ],
    );
  }
}
