import 'package:cricket_score_api/Domain/funtion_sept20.dart';
import 'package:cricket_score_api/constants/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SecondUpperBarWidget extends StatelessWidget {
  const SecondUpperBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ApiService().firstDatafetchData(),
      builder: (context, snapshot) {
        final data = snapshot.data;
        if (data != null) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 140.h,
                width: 140.w,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(data.response.teams[1].logoUrl),
                  ),
                ),
              ),
              // ignore: prefer_const_constructors
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(data.response.teams[1].shortName,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'AcuminPro',
                            fontWeight: FontWeight.w500)),
                    Text(
                        '${data.response.innings[0].runs}(${data.response.innings[0].overs})',
                        style: kTextstyle),
                  ],
                ),
              ),
              const Text(
                'Complete',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'AcuminPro',
                    fontWeight: FontWeight.w500),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(data.response.teams[0].shortName,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'AcuminPro',
                            fontWeight: FontWeight.w500)),
                    Text(
                        '${data.response.innings[1].runs}(${data.response.innings[1].overs})',
                        style: kTextstyle),
                  ],
                ),
              ),
              Container(
                height: 140.h,
                width: 140.w,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(data.response.teams[0].logoUrl),
                  ),
                ),
              ),
            ],
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
