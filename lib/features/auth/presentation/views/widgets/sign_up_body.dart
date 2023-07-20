
import 'package:flutter/material.dart';

import '../../../../../core/utilies/styles.dart';
import '../../../../home/presentation/views/home_view.dart';
import '../register_view.dart';

class SignBody extends StatefulWidget {
  const SignBody({Key? key}) : super(key: key);

  @override
  State<SignBody> createState() => _SignBodyState();
}
var emailController = TextEditingController();
var passwordController = TextEditingController();
bool isPasswordVisible = false;
class _SignBodyState extends State<SignBody> {
  @override
  Widget build(BuildContext context) {
   return Padding(
     padding:  EdgeInsets.all(20.0), //this number is standard at all at will make padding to make it in center
     child: Center(
       child: SingleChildScrollView(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             const Text(
               'Let\'s sign you in.',
               style: Styles.textStyle27,
             ),
             const SizedBox(height: 20,),
             SizedBox(height: 5,),
             const Text(
               'Welcome Back.' ,
               style: Styles.textStyle22,
             ),
             const Text(
               'You have been missed!' ,
               style: Styles.textStyle22,
             ),
             const SizedBox(
               height: 40.0,
             ),
             TextFormField(
               controller: emailController,
               decoration: const InputDecoration(
                 hintText: 'Email, number or username ',
                 border: OutlineInputBorder(),
               ),
               keyboardType: TextInputType.emailAddress,
               onFieldSubmitted: (value){
                 print(value);
               },
             ),
             const SizedBox(
               height: 15.0,
             ),
             TextFormField(
               controller: passwordController,
               decoration: InputDecoration(
                 hintText: 'Password',
                 suffixIcon: IconButton(
                   onPressed: () {
                     setState(() {
                       isPasswordVisible = !isPasswordVisible;
                     });
                   },
                   icon: Icon(
                     isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                   ),
                 ),
                 border: OutlineInputBorder(),
               ),
               keyboardType: TextInputType.visiblePassword,
               onFieldSubmitted: (value){
                 print(value);
               },
               obscureText: !isPasswordVisible,
             ),
             const SizedBox(
               height: 20.0,
             ),
             Container(
               width: double.infinity,
               height: 50,
               color: Colors.black,
               child:  MaterialButton(
                 onPressed: ()
                 {
                   Navigator.push(
                     context,
                     MaterialPageRoute(
                       builder: (context) => const HomeView(),
                     ),
                   );
                 },
                 child: const Text(
                   'Go',
                   style: TextStyle(
                     color: Colors.white,
                   ),
                 ),
               ),
             ),
             const SizedBox(
               height: 10.0,
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children:  [
                  Text(
                   'Don\'t have an account?',
                   style: Styles.textStyle22.copyWith(fontSize: 13,)
                 ),
                 TextButton(
                   onPressed: (){
                     Navigator.push(
                       context,
                       MaterialPageRoute(
                         builder: (context) => const RegisterScreen(),
                       ),
                     );
                   },
                   child:  Text(
                     'Register ',
                     style: Styles.textStyle15.copyWith(fontSize: 13),
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
