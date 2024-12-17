import 'package:flutter/material.dart';

class textSmallWidget extends StatelessWidget {
  // final String text1;
  final String text2;
  final Color colorBg;
  const textSmallWidget({
    super.key,
    // required this.text1,
    required this.text2,
    required this.colorBg,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      // crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Text(text1),
        // Text('Not A Member?),
        Text(text2,style: TextStyle(
            color: colorBg
        ),),
      ],
    );
  }
}
