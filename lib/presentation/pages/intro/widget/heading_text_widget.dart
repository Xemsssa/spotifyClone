import 'package:flutter/material.dart';

import '../../../../core/configs/theme/app_colors.dart';

class headingTextWidget extends StatelessWidget {
  final String text;
  const headingTextWidget({
    super.key, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      // width: double.maxFinite,
      child: Text(text,
        style: TextStyle(
          fontSize: 17,
          color: AppColors.midGrey,
          fontWeight: FontWeight.w500,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}