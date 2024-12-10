import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/assets_manager.dart';

class HeadHome extends StatelessWidget {
  const HeadHome({super.key, required this.isFav});

  final bool isFav;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 289.h,
      color: Colors.transparent,
      child: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: 217.h,
            child: Image.asset(
              'assets/images/Image.png',
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            left: 21.w,
            top: 90.w,
            child: Row(
              children: [
                FittedBox(
                  fit: BoxFit.cover,
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/images/Image1.png',
                        fit: BoxFit.cover,
                      ),
                      SvgPicture.asset(
                        isFav
                            ? AssetsManager.isFavTrue
                            : AssetsManager.isFavFalse,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 130.h,
                      ),
                      const Text(
                        'doresssssssdddddddddddddddddddddddddddddss',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      const Text(
                        '2019 PG 2h',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
