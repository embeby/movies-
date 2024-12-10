import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../Screens/home/home.dart';
import '../Screens/movie_profile/movie_profile.dart';
import '../core/routes_manager.dart';
import '../splash_screen/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(350, 800),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          RoutesManager.splashScreen: (context) => const SplashScreen(),
          RoutesManager.homeScreen: (context) => const Home(),
          RoutesManager.movieProfile: (context) => const MovieProfile(),
        },
        initialRoute: RoutesManager.splashScreen,
      ),
    );
  }
}
