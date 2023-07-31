import 'package:cricket_score_api/application/home_Screen/screen_home.dart';
import 'package:cricket_score_api/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(1080, 2340),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          primaryColor: kPrimaryColor,
          textTheme: Theme.of(context).textTheme.apply(
                fontFamily: 'AcuminPro',
              ),
        ),
        home: ScreenHome(),
      ),
    );
  }
}
