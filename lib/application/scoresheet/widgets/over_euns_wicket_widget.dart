import 'package:flutter/material.dart';

class OverRunsWicketWidget extends StatelessWidget {
  const OverRunsWicketWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5),
      height: 20,
      width: 20,
      decoration: BoxDecoration(border: Border.all(), shape: BoxShape.circle),
    );
  }
}
