import 'package:cricket_score_api/Domain/funtion_sept20.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpperBarContainer extends StatelessWidget {
  const UpperBarContainer({
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
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 100),
                child: CircleAvatar(
                  child:
                      Image.asset('assets/images/avathar-removebg-preview.png'),
                ),
              ),
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/gamepad.png'))),
              ),
              Stack(
                children: [
                  const Positioned(
                    top: 3,
                    left: 50,
                    child: Icon(
                      Icons.account_balance_wallet_rounded,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 60, right: 20),
                    height: 90.h,
                    width: 130.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        shape: BoxShape.rectangle,
                        border: Border.all(color: Colors.white, width: 3)),
                    child: const Center(
                        child: Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text(
                        '000',
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
                  ),
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications,
                    color: Colors.white,
                    size: 35,
                  ))
            ],
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
