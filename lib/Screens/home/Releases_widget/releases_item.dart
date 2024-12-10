import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/assets_manager.dart';
import '../../../core/routes_manager.dart';

class MovieCard extends StatefulWidget {
  const MovieCard({super.key});

  @override
  State<MovieCard> createState() => _MovieCardState();
}

class _MovieCardState extends State<MovieCard> {
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 98.w,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 8.w),
            child: InkWell(
              onTap: () {
                Navigator.pushReplacementNamed(
                    context, RoutesManager.movieProfile);
              },
              child: Container(
                padding: EdgeInsets.all(8.w),
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage(
                      'assets/images/d09cbedd39d8c74b576632e50de5c3d3.png',
                    ),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(4.r),
                ),
              ),
            ),
          ),
          Positioned(
            child: InkWell(
              onTap: () {
                setState(() {
                  isFav = !isFav;
                });
              },
              child: SvgPicture.asset(
                isFav ? AssetsManager.isFavTrue : AssetsManager.isFavFalse,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
