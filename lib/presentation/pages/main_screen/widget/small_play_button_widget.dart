import 'package:flutter/material.dart';
import 'package:spotify_clone/core/configs/assets/app_images.dart';
import 'package:spotify_clone/core/configs/theme/app_colors.dart';

class SmallPlayButtonWidget extends StatelessWidget {
  const SmallPlayButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        transform: Matrix4.translationValues(10, 10, 0),
        padding:EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: AppColors.lightgrey2,
            borderRadius: BorderRadius.circular(20)
        ),
        child: Image.asset(AppImages.playBnt),
      )
      ,
    );
  }
}