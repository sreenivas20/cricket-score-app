import 'package:cricket_score_api/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VSWidget extends StatelessWidget {
  const VSWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 12),
          height: 20.h,
          width: 270.w,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                kDarkBlue,
                Colors.white,
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            left: 30,
          ),
          height: 80.h,
          width: 100.w,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: kDarkBlue,
          ),
          child: const Center(
              child: Text(
            'V/S',
            style: TextStyle(
                fontFamily: 'AcuminPro', color: Colors.white, fontSize: 12),
          )),
        ),
      ],
    );
  }
}
