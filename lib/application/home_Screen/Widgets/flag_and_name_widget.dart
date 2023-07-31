import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FlagAndNameWidget extends StatelessWidget {
  const FlagAndNameWidget({
    super.key,
    required this.contryName,
    required this.flagImage,
  });
  final String contryName;
  final String flagImage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
        left: 20,
      ),
      child: Column(
        children: [
          Container(
            height: 160.h,
            width: 160.w,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(flagImage),
              ),
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          Text(contryName,
              style: const TextStyle(
                  fontFamily: 'AcuminPro',
                  fontWeight: FontWeight.bold,
                  fontSize: 15))
        ],
      ),
    );
  }
}
