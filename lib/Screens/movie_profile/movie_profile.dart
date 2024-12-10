import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/colors_manager.dart';
import '../home/Releases_widget/releases_item.dart';
import '../home/Releases_widget/releases_widget.dart';

class MovieProfile extends StatelessWidget {
  const MovieProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsManager.bgAppBar,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_outlined,
            color: Colors.white,
          ),
        ),
        title: const Text(
          'dora',
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: ColorsManager.bgColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 244.h,
            width: double.infinity,
            child: Image.asset(
              'assets/images/Image.png',
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'data',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                const Text(
                  'data',
                  style: TextStyle(
                    color: Colors.white30,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0.w),
            child: SizedBox(
              height: 150.h,
              child: const MovieCard(),
            ),
          ),
          const ReleasesWidget(//title: 'More Like This'
              ),
        ],
      ),
    );
  }
}
