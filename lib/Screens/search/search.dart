import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yalla_benna/core/colors_manager.dart';

import 'NoMovieFound.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.bgColor,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20.0.w),
            child: TextField(
              style: const TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                prefixIconColor: Colors.white,
                hintText: 'Search',
                hintStyle: TextStyle(fontSize: 18.w, color: Colors.white30),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(52.r),
                ),
              ),
            ),
          ),
          const NoMoviesFound()
        ],
      ),
    );
  }
}
