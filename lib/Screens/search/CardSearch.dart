import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardSearch extends StatelessWidget {
  const CardSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/images/fd56e79a492733f92951955aa0ae532f.png',
                height: 89.h,
                width: 140.w,
                fit: BoxFit.cover,
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: Text(
                      'text',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.sp,
                      ),
                    ),
                  ),
                  Text(
                    'text',
                    style: TextStyle(
                      color: Colors.white30,
                      fontSize: 18.sp,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: Text(
                      'text',
                      style: TextStyle(
                        color: Colors.white30,
                        fontSize: 18.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(8.0.w),
            child: Divider(
              color: Colors.white30,
              height: 2.h,
              thickness: 2.h,
              endIndent: 2.w,
              indent: 2.w,
            ),
          )
        ],
      ),
    );
  }
}