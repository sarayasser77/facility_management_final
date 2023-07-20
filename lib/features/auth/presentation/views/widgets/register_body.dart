// import 'package:flutter/material.dart';
// import 'package:task2/log_in.dart';
//
// import 'home_page.dart';
//
// class SignupScreen extends StatefulWidget {
//   const SignupScreen({Key? key}) : super(key: key);
//
//   @override
//   State<SignupScreen> createState() => _SignupScreenState();
// }
// var emailController = TextEditingController();
// var passwordController = TextEditingController();
// bool isPasswordVisible = false;
// class _SignupScreenState extends State<SignupScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:
//       Padding(
//         padding:  const EdgeInsets.all(20.0), //this number is standard at all at will make padding to make it in center
//         child: Center(
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                   alignment: Alignment.topLeft,
//                   child: Image.asset(
//                     'assets/images/McQueen15-removebg-preview.png',
//                     width: 100,
//                     height: 100,
//                   ),
//                 ),
//                 const Text(
//                   'WELCOME, ',
//                   style: TextStyle(
//                     fontSize: 40.0,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 const SizedBox(height: 20,),
//                 const Text('Sign Up to start your new journey' , style: TextStyle(color: Colors.grey),),
//                 const SizedBox(
//                   height: 40.0,
//                 ),
//                 TextFormField(
//                   decoration: const InputDecoration(
//                     labelText: 'Fullname',
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.emailAddress,
//                   onFieldSubmitted: (value){
//                     print(value);
//                   },
//                 ),
//                 const SizedBox(
//                   height: 15.0,
//                 ),
//                 TextFormField(
//                   decoration: const InputDecoration(
//                     labelText: 'Username',
//                     prefixIcon: Icon(Icons.person,),
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.emailAddress,
//                   onFieldSubmitted: (value){
//                     print(value);
//                   },
//                 ),
//                 const SizedBox(
//                   height: 15.0,
//                 ),
//                 TextFormField(
//                   controller: emailController,
//                   decoration: const InputDecoration(
//                     labelText: 'E-mail',
//                     prefixIcon: Icon(Icons.email,),
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.emailAddress,
//                   onFieldSubmitted: (value){
//                     print(value);
//                   },
//                 ),
//                 const SizedBox(
//                   height: 15.0,
//                 ),
//                 TextFormField(
//                   decoration: const InputDecoration(
//                     labelText: 'PhoneNumber',
//                     prefixIcon: Icon(Icons.phone_android,),
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.emailAddress,
//                   onFieldSubmitted: (value){
//                     print(value);
//                   },
//                 ),
//                 const SizedBox(
//                   height: 15.0,
//                 ),
//                 TextFormField(
//                   controller: passwordController,
//                   decoration: InputDecoration(
//                     labelText: 'Password',
//                     prefixIcon: Icon(Icons.lock,),
//                     suffixIcon: IconButton(
//                       onPressed: () {
//                         setState(() {
//                           isPasswordVisible = !isPasswordVisible;
//                         });
//                       },
//                       icon: Icon(
//                         isPasswordVisible ? Icons.visibility : Icons.visibility_off,
//                       ),
//                     ),
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.visiblePassword,
//                   onFieldSubmitted: (value){
//                     print(value);
//                   },
//                   obscureText: !isPasswordVisible,
//                 ),
//                 const SizedBox(
//                   height: 20.0,
//                 ),
//                 Container(
//                   width: double.infinity,
//                   height: 50,
//                   color: Colors.black,
//                   child:  MaterialButton(
//                     onPressed: ()
//                     {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => const HomePage(),
//                         ),
//                       );
//                     },
//                     child: const Text(
//                       'Go',
//                       style: TextStyle(
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10.0,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children:  [
//                     const Text('Already have an account ?',
//                     ),
//                     TextButton(
//                       onPressed: (){
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => const LoginScreen(),
//                           ),
//                         );
//                       },
//                       child: const Text(
//                         'Log In ',
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
