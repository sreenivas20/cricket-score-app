import 'package:flutter/material.dart';

class BatsmenAndBowlerNameWidget extends StatelessWidget {
  const BatsmenAndBowlerNameWidget({
    super.key,
    required this.batsmenName,
    required this.runs,
    required this.ballsFaced,
    required this.fours,
    required this.sixs,
  });
  final String batsmenName;
  final int runs;
  final int ballsFaced;
  final int fours;
  final int sixs;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          '${batsmenName}',
          style: const TextStyle(
            color: Colors.grey,
            fontFamily: 'AcuminPro',
            fontWeight: FontWeight.w500,
            // fontSize: 18,
          ),
        ),
        const SizedBox(
          width: 0,
        ),
        Text(
          runs.toString(),
          style: const TextStyle(
            color: Colors.grey,
            fontFamily: 'AcuminPro',
            fontWeight: FontWeight.w500,
            // fontSize: 18,
          ),
        ),
        Text(
          ballsFaced.toString(),
          style: const TextStyle(
            color: Colors.grey,
            fontFamily: 'AcuminPro',
            fontWeight: FontWeight.w500,
            // fontSize: 18,
          ),
        ),
        Text(
          fours.toString(),
          style: const TextStyle(
            color: Colors.grey,
            fontFamily: 'AcuminPro',
            fontWeight: FontWeight.w500,
            // fontSize: 18,
          ),
        ),
        Text(
          sixs.toString(),
          style: const TextStyle(
            color: Colors.grey,
            fontFamily: 'AcuminPro',
            fontWeight: FontWeight.w500,
            // fontSize: 18,
          ),
        ),
        const Text(
          '00',
          style: TextStyle(
            color: Colors.grey,
            fontFamily: 'AcuminPro',
            fontWeight: FontWeight.w500,
            // fontSize: 18,
          ),
        ),
      ],
    );
  }
}
