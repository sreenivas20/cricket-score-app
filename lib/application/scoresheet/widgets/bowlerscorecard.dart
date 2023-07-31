import 'package:flutter/material.dart';

class BowlerScoreCard extends StatelessWidget {
  const BowlerScoreCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          'Adam Zamp',
          style: TextStyle(
            color: Colors.grey,
            fontFamily: 'AcuminPro',
            fontWeight: FontWeight.w500,
            // fontSize: 18,
          ),
        ),

        Text(
          '45',
          style: TextStyle(
            color: Colors.grey,
            fontFamily: 'AcuminPro',
            fontWeight: FontWeight.w500,
            // fontSize: 18,
          ),
        ),
        Text(
          '19',
          style: TextStyle(
            color: Colors.grey,
            fontFamily: 'AcuminPro',
            fontWeight: FontWeight.w500,
            // fontSize: 18,
          ),
        ),
        Text(
          '00',
          style: TextStyle(
            color: Colors.grey,
            fontFamily: 'AcuminPro',
            fontWeight: FontWeight.w500,
            // fontSize: 18,
          ),
        ),
        Text(
          '00',
          style: TextStyle(
            color: Colors.grey,
            fontFamily: 'AcuminPro',
            fontWeight: FontWeight.w500,
            // fontSize: 18,
          ),
        ),
        // Text(
        //   '00',
        //   style: TextStyle(
        //     color: Colors.grey,
        //     fontFamily: 'AcuminPro',
        //     fontWeight: FontWeight.w500,
        //     // fontSize: 18,
        //   ),
        // ),
      ],
    );
  }
}
