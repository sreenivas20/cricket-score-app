import 'package:cricket_score_api/Domain/funtion_sept20.dart';
import 'package:cricket_score_api/application/home_Screen/Widgets/matchlistwidget.dart';
import 'package:cricket_score_api/application/scoresheet/scoresheet_screen.dart';
import 'package:cricket_score_api/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MatchListScreen extends StatelessWidget {
  const MatchListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: SizedBox(
          child: Padding(
            padding: EdgeInsets.only(
              top: 500.h,
            ),
            child: Center(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(CupertinoPageRoute(
                        builder: (context) => ScoreSheetScreen(
                           ),
                      ));
                    },
                    child:
                        const MatchListWidget(matchDate: 'September 20,2022'),
                  ),
                  const MatchListWidget(matchDate: 'September 23,2022'),
                  const MatchListWidget(matchDate: 'September 25,2022')
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
