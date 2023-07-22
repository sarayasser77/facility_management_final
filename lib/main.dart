import 'package:facility_management/features/services/presentation/view/services_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/utilies/app_router.dart';
import 'features/auth/presentation/views/sign_up_view.dart';
import 'features/services/presentation/view/flat_view.dart';
import 'features/successful/presentation/views/success_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
              routerConfig: AppRouter.router,
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                textTheme: GoogleFonts.robotoTextTheme(),
              ),
            );

    // return MaterialApp(
    //           theme: ThemeData(
    //             textTheme: GoogleFonts.robotoTextTheme(),
    //           ),
    //           home: FlatView(),
    //         );
  }
}

