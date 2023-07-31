import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DateTossDetailsWidget extends StatelessWidget {
  const DateTossDetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 6),
      height: 229.h,
      width: 980.w,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 2),
                spreadRadius: 0,
                blurRadius: 2,
                color: Colors.black.withOpacity(0.1))
          ]),
      child: const Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Date',
                  style: TextStyle(fontSize: 17),
                ),
                Text(
                  '10:00 Sunday, June 04,2023',
                  style: TextStyle(fontSize: 17),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Toss',
                  style: TextStyle(fontSize: 17),
                ),
                Text(
                  'INDIA won the toss and opt to bat',
                  style: TextStyle(fontSize: 17),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
