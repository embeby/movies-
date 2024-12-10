import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yalla_benna/Screens/home/popular_widget/head_home.dart';
import 'package:yalla_benna/Screens/home/recommended_widget/recommended_widget.dart';
import 'package:yalla_benna/core/colors_manager.dart';

import 'Releases_widget/releases_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.bgColor,
      body: Column(
        children: [
          const HeadHome(
            isFav: true,
          ),
          SizedBox(
            height: 24.h,
          ),
          const ReleasesWidget(//title: 'Top Movies'
              ),
          SizedBox(
            height: 30.h,
          ),
          const RecommendedWidget(),
        ],
      ),
    );
  }
}
