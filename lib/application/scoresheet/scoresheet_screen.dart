import 'package:cricket_score_api/Domain/funtion_sept20.dart';
import 'package:cricket_score_api/application/scoresheet/widgets/DropDownFirstContainer.dart';
import 'package:cricket_score_api/application/scoresheet/widgets/Scorecardupperbar/secondbar.dart';
import 'package:cricket_score_api/application/scoresheet/widgets/Scorecardupperbar/upperbar.dart';
import 'package:cricket_score_api/application/scoresheet/widgets/batsmen_bowler_scorecard_widget.dart';
import 'package:cricket_score_api/application/scoresheet/widgets/datetoss_details_widget.dart';
import 'package:cricket_score_api/application/scoresheet/widgets/over_euns_wicket_widget.dart';
import 'package:cricket_score_api/application/scoresheet/widgets/playerof_the_match_widget.dart';
import 'package:cricket_score_api/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ScoreSheetScreen extends StatefulWidget {
  const ScoreSheetScreen({
    Key? key,
  }) : super(key: key);
  // final Function futureFunction;
  @override
  State<ScoreSheetScreen> createState() => _ScoreSheetScreenState();
}

const List<Widget> _widgetOptions = <Widget>[
  Text('Home'),
  Text('Search'),
  Text('Favorites'),
  Text('Profile'),
];
int _selectedIndex = 0;
int _currentIndex = 0;

class _ScoreSheetScreenState extends State<ScoreSheetScreen> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<dynamic>? decodedData;

  @override
  void initState() {
    super.initState();
    // firstDatafetchData();
  }

  // Future<void> fetchData() async {
  //   final data = await widget.futureFunction();
  //   setState(() {
  //     decodedData = data;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    // log(decodedData.toString());
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Column(
          children: [
            Container(
              height: 700.h,
              decoration: const BoxDecoration(
                color: kDarkBlue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: const Column(children: [
                SizedBox(
                  height: 15,
                ),
                UpperBarContainer(),
                SizedBox(
                  height: 18,
                ),
                SecondUpperBarWidget(),
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Divider(
                    color: Colors.white,
                    thickness: 0.5,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 8),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text('India Won ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'AcuminPro',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16)),
                            Text('By 104 Runs',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'AcuminPro',
                                ))
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('Last 6 Ball',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'AcuminPro',
                                    fontSize: 16)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                OverRunsWicketWidget(),
                                OverRunsWicketWidget(),
                                OverRunsWicketWidget(),
                                OverRunsWicketWidget(),
                                OverRunsWicketWidget(),
                                OverRunsWicketWidget(),
                              ],
                            )
                          ],
                        ),
                      ]),
                )
              ]),
            ),
            Expanded(
              child: DefaultTabController(
                length: 3, // Number of tabs
                child: Column(
                  children: [
                    Container(
                      height: 100.h,
                      decoration:
                          BoxDecoration(color: Colors.white, boxShadow: [
                        BoxShadow(
                            offset: const Offset(0, 3),
                            spreadRadius: 0,
                            blurRadius: 2,
                            color: Colors.black.withOpacity(0.1))
                      ]),
                      child: const TabBar(
                        labelColor: kDarkBlue,
                        unselectedLabelColor: Colors.grey,
                        labelStyle: TextStyle(
                            fontFamily: 'AcuminPro',
                            fontWeight: FontWeight.w500),
                        tabs: [
                          Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Tab(text: 'Summary'),
                            ],
                          ),
                          Tab(text: 'Scorecard'),
                          Tab(text: 'Report'),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          // Content of Tab 1
                          FutureBuilder(
                            future: ApiService().firstDatafetchData(),
                            builder: (context, snapshot) {
                              // log('cccqdc ${snapshot.data.response!.players}');
                              // log(snapshot.data.toString());
                              return Container(
                                margin: const EdgeInsets.only(top: 8),
                                height: 100.h,
                                width: 50,
                                decoration:
                                    const BoxDecoration(color: kPrimaryColor),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      BatsMenAndBowlersScorcard(),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      BatsMenAndBowlersScorcard(),
                                      PlayerOfTheMatchWidget(),
                                      DateTossDetailsWidget()
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                          // Content of Tab 2
                          Container(
                            margin: const EdgeInsets.only(top: 8),
                            height: 100.h,
                            width: 50.w,
                            decoration:
                                const BoxDecoration(color: kPrimaryColor),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _currentIndex = 0;
                                      });
                                    },
                                    child: const DropdownWidget(
                                      countryFlag:
                                          'assets/images/indian_flag-removebg-preview.png',
                                      countryName: 'India Innings',
                                      runsAndOvers: '208/6(20ov)',
                                      margin: 110,
                                      currentindex: 0,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _currentIndex = 1;
                                      });
                                    },
                                    child: const DropdownWidget(
                                        countryFlag:
                                            'assets/images/australia_flag-removebg-preview.png',
                                        countryName: 'Australia Innings',
                                        runsAndOvers: '211/6(20ov)',
                                        margin: 90,
                                        currentindex: 1),
                                  ),
                                  IndexedStack(
                                    index: _currentIndex,
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 8.0, left: 10, right: 0),
                                        child: ScorecardFirstCard(),
                                      ),
                                      Center(child: Text(" second Container"))
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          const Center(child: Text('Tab 3 Content')),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: bottomNavigationBar(),
      ),
    );
  }

  BottomNavigationBar bottomNavigationBar() {
    return BottomNavigationBar(
      showUnselectedLabels: true,
      backgroundColor: Colors.white,
      selectedItemColor: kDarkBlue,
      unselectedItemColor: Colors.grey,
      items: <BottomNavigationBarItem>[
        const BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.refresh_outlined),
          label: 'Refresh',
        ),
        BottomNavigationBarItem(
          icon: Icon(MdiIcons.trophy),
          label: 'All Matchs',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.add_box),
          label: 'Create Contests',
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
    );
  }
}

class SocreCardBatsmenOutDetails extends StatelessWidget {
  const SocreCardBatsmenOutDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('KL Rahul'),
              Text(
                'c Nathan Ellis b josh hazelwood',
                style: TextStyle(color: Colors.grey, fontSize: 10),
              ),
            ],
          ),
          SizedBox(
            width: 33,
          ),
          Text('50'),
          SizedBox(
            width: 23,
          ),
          Text('50'),
          SizedBox(
            width: 23,
          ),
          Text('50'),
          SizedBox(
            width: 23,
          ),
          Text('50'),
          SizedBox(
            width: 20,
          ),
          Text('50'),
        ],
      ),
    );
  }
}

class DropdownWidget extends StatelessWidget {
  const DropdownWidget({
    super.key,
    required this.countryName,
    required this.countryFlag,
    required this.runsAndOvers,
    required this.margin,
    required this.currentindex,
  });
  final String countryName;
  final String countryFlag;
  final String runsAndOvers;
  final double margin;
  final int currentindex;
  @override
  Widget build(BuildContext context) {
    // bool isArrowUp = currentindex == 1;
    Icon arrowIcon;
    if (currentindex == 0) {
      arrowIcon = const Icon(Icons.keyboard_arrow_down);
    } else {
      arrowIcon = const Icon(Icons.keyboard_arrow_up);
    }
    return Container(
      margin: const EdgeInsets.only(top: 0),
      height: 120.h,
      decoration: const BoxDecoration(color: Colors.white),
      child: Row(
        children: [
          arrowIcon,
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(countryFlag))),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            countryName,
            style: const TextStyle(color: kDarkBlue, fontSize: 15),
          ),
          Container(
            margin: EdgeInsets.only(left: margin),
            height: 60.h,
            width: 260.w,
            decoration: BoxDecoration(
                color: kDarkBlue, borderRadius: BorderRadius.circular(20)),
            child: Center(
                child: Text(
              runsAndOvers,
              style: const TextStyle(color: Colors.white, fontSize: 13),
            )),
          )
        ],
      ),
    );
  }
}
