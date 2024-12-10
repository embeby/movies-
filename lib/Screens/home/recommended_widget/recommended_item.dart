import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/colors_manager.dart';
import '../../../core/routes_manager.dart';

class MovieCardWithDetails extends StatefulWidget {
  const MovieCardWithDetails({
    super.key,
  });

  @override
  State<MovieCardWithDetails> createState() => _MovieCardWithDetailsState();
}

class _MovieCardWithDetailsState extends State<MovieCardWithDetails> {
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 97,
      height: 184,
      decoration: BoxDecoration(
          border: Border.all(color: ColorsManager.bgItems, width: 1),
          color: ColorsManager.bgItems,
          boxShadow: const [
            BoxShadow(
                color: ColorsManager.bgCardMovie,
                blurRadius: 3,
                spreadRadius: 1,
                offset: Offset(0, 0))
          ],
          borderRadius: BorderRadius.circular(5)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            children: [
              SizedBox(
                  height: 128.7,
                  width: double.infinity,
                  child: InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(
                            context, RoutesManager.movieProfile);
                      },
                      child: Image.asset(
                        'assets/images/d09cbedd39d8c74b576632e50de5c3d3.png',
                        fit: BoxFit.cover,
                      ))),
              InkWell(
                  onTap: () {},
                  child: SvgPicture.asset(
                    'assets/images/bookmark.svg',
                    fit: BoxFit.cover,
                    height: 36,
                    width: 27,
                  )),
            ],
          ),
          const SizedBox(
            height: 4,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 12,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "7.7",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    )
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "Deadpool 2",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "2018  R  1h 59m",
                  style: TextStyle(fontSize: 15, color: Colors.white30),
                  textAlign: TextAlign.start,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
