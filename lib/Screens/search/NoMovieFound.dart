import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NoMoviesFound extends StatelessWidget {
  const NoMoviesFound({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: 6.h,
      child: Image.asset('assets/images/Group 22.png'),
    );
  }
}
