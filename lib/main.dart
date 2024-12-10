import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:yalla_benna/splash_screen/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      designSize: Size(448, 998),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'PeshoO Reda',
        home: SplashScreen(),
      ),
    );
  }
}
