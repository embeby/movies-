import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yalla_benna/Screens/home/recommended_widget/recommended_item.dart';

import '../../../core/colors_manager.dart';

class RecommendedWidget extends StatelessWidget {
  const RecommendedWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h),
      child: Container(
        color: ColorsManager.bgCardMovie,
        height: 250.h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("title", style: TextStyle(color: Colors.white)),
            Expanded(
              child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 8.h),
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) => Padding(
                      padding: EdgeInsets.symmetric(horizontal: 9.h),
                      child: const MovieCardWithDetails())),
            ),
          ],
        ),
      ),
    );
  }
}
