import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class HomeListview extends StatelessWidget {
  const HomeListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context , index ){
       if(index == 1 ) {
         return Column(
        children: [
          Row(
            children: [
              Text('Welcome , ', style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 20
              ),),
              Text('Loaa Hany', style: TextStyle(
                  fontSize: 20
              ),)
            ],
          ),
          Container(
            child: Stack(
              children: [
                Positioned(

                  child: CircleAvatar(
                    child: Image.asset('assets/homeImages/FB_IMG_1594741082303.jpg'),
                  ),
                ),
                Positioned(child: Text('Andro',style: TextStyle(fontSize: 15),))
              ],
            ),
          ),
        ],
      );
       } else
         return   Container(
           child: Stack(
             children: [
               Positioned(

                 child: CircleAvatar(
                   child: Image.asset('assets/homeImages/FB_IMG_1594741082303.jpg'),
                 ),
               ),
               Positioned(child: Text('Andro',style: TextStyle(fontSize: 15),))
             ],
           ),
         );
    },
    itemCount: 5,
    );
  }
}
