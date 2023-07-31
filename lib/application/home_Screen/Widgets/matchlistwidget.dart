import 'package:cricket_score_api/application/home_Screen/Widgets/flag_and_name_widget.dart';
import 'package:cricket_score_api/application/home_Screen/Widgets/verserse_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MatchListWidget extends StatelessWidget {
  const MatchListWidget({
    super.key,
    required this.matchDate,
  });
  final String matchDate;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 320.h,
        width: 1000.w,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 5),
                  spreadRadius: 0,
                  blurRadius: 2,
                  color: Colors.black.withOpacity(0.1))
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const FlagAndNameWidget(
                contryName: 'IND',
                flagImage: 'assets/images/indian_flag-removebg-preview.png'),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 13.0),
              child: Column(
                children: [
                  const Text('PAYTM T20',
                      style: TextStyle(
                          fontFamily: 'AcuminPro',
                          fontWeight: FontWeight.w500)),
                  const SizedBox(
                    height: 10,
                  ),
                  const VSWidget(),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(matchDate,
                      style: const TextStyle(
                          color: Colors.red,
                          fontFamily: 'AcuminPro',
                          fontWeight: FontWeight.w500)),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: FlagAndNameWidget(
                  contryName: 'AUS',
                  flagImage:
                      'assets/images/australia_flag-removebg-preview.png'),
            ),
          ],
        ),
      ),
    );
  }
}
