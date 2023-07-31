import 'package:cricket_score_api/Domain/funtion_sept20.dart';
import 'package:cricket_score_api/application/scoresheet/widgets/batsmenandbowler_name_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BatsMenAndBowlersScorcard extends StatelessWidget {
  const BatsMenAndBowlersScorcard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // log(snapshot.data.toString());
    // final List<dynamic> players = snapshot.data['players'] as List<dynamic>;
    // final partnership =
    //     snapshot.data['innings'][0]['statistics']['partnership']['batsmen'];
    // log(partnership.toString());

    // final List<dynamic> players = snapshot.data['players'];

    return FutureBuilder(
      future: ApiService().firstDatafetchData(),
      builder: (context, snapshot) {
        final data = snapshot.data;
        if (data != null) {
          return Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 12),
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      BatsmenAndBowlerNameWidget(
                        batsmenName: data.response.players[0].shortName,
                        ballsFaced: data.response.innings[0].fows[0].ballsFaced,
                        runs: data.response.innings[0].fows[0].runs,
                        fours: data.response.innings[0].statistics
                            .partnership[0].batsmen[0].fours,
                        sixs: data.response.innings[0].statistics.partnership[0]
                            .batsmen[0].sixes,
                      ),
                      BatsmenAndBowlerNameWidget(
                        batsmenName: data.response.players[1].shortName,
                        ballsFaced: data.response.innings[1].fows[1].ballsFaced,
                        runs: data.response.innings[1].fows[1].runs,
                        fours: data.response.innings[1].statistics
                            .partnership[1].batsmen[1].fours,
                        sixs: data.response.innings[1].statistics.partnership[1]
                            .batsmen[1].sixes,
                      ),
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
                    Text('R'),
                    Text('B'),
                    Text('4s'),
                    Text('6s'),
                    Text('Sr'),
                  ],
                ),
              ),
            ],
          );
        } else {
          return Center(
            child: CircularProgressIndicator(strokeWidth: 2),
          );
        }
      },
    );
  }
}
