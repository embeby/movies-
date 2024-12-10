import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yalla_benna/Screens/home/Releases_widget/releases_item.dart';

import '../../../core/colors_manager.dart';

class ReleasesWidget extends StatelessWidget {
  const ReleasesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsManager.bgItems,
      height: 187.h,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(8.w, 0, 0, 8.h),
              child: const Text(
                'title',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 128.h,
              child: Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.only(left: 8.w),
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const MovieCard();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
