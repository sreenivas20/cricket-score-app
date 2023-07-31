import 'package:cricket_score_api/application/scoresheet/scoresheet_screen.dart';
import 'package:cricket_score_api/application/scoresheet/widgets/bowlerscorecard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScorecardFirstCard extends StatelessWidget {
  const ScorecardFirstCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 12),
              height: 590.h,
              width: 1000.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 2),
                        spreadRadius: 0,
                        blurRadius: 2,
                        color: Colors.black.withOpacity(0.1))
                  ]),
              // ignore: prefer_const_constructors
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SocreCardBatsmenOutDetails(),
                    Divider(
                      height: 3,
                      endIndent: 10,
                      indent: 10,
                      color: Colors.grey.withOpacity(0.3),
                    ),
                    const SocreCardBatsmenOutDetails(),
                    Divider(
                      height: 3,
                      endIndent: 10,
                      indent: 10,
                      color: Colors.grey.withOpacity(0.3),
                    ),
                    const SocreCardBatsmenOutDetails(),
                    Divider(
                      height: 3,
                      endIndent: 10,
                      indent: 10,
                      color: Colors.grey.withOpacity(0.3),
                    ),
                    const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 3.0, left: 8, right: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Extras',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                '4(b 0,w 4,nb 0,lb 0)',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 3.0, left: 8, right: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                '208/6(20)',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 100.h,
              width: 1000.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 2),
                        spreadRadius: 0,
                        blurRadius: 2,
                        color: Colors.black.withOpacity(0.1))
                  ]),
              child: const Row(
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  Text('Batsmen'),
                  SizedBox(
                    width: 110,
                  ),
                  Text('R'),
                  SizedBox(
                    width: 23,
                  ),
                  Text('B'),
                  SizedBox(
                    width: 23,
                  ),
                  Text('4s'),
                  SizedBox(
                    width: 23,
                  ),
                  Text('6s'),
                  SizedBox(
                    width: 23,
                  ),
                  Text('S/R'),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20),
                height: 290.h,
                width: 980.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(0, 2),
                          spreadRadius: 0,
                          blurRadius: 2,
                          color: Colors.black.withOpacity(0.1))
                    ]),
                // ignore: prefer_const_constructors
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      BowlerScoreCard(),
                      BowlerScoreCard(),
                      BowlerScoreCard(),
                    ],
                  ),
                ),
              ),
              Container(
                height: 100.h,
                width: 980.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(0, 2),
                          spreadRadius: 0,
                          blurRadius: 2,
                          color: Colors.black.withOpacity(0.1))
                    ]),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Batsmen'),
                    SizedBox(
                      width: 10,
                    ),
                    Text('O'),
                    Text('M'),
                    Text('R'),
                    Text('W'),
                    Text('Eco'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
