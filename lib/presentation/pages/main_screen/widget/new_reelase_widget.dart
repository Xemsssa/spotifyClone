import 'package:flutter/material.dart';
import 'package:spotify_clone/core/configs/theme/app_colors.dart';
import 'package:spotify_clone/presentation/pages/intro/widget/heading_big_text_widget.dart';

class NewReleaseWidget extends StatelessWidget {
  final String auhor;
  final String track;
  // final Image image;
  const NewReleaseWidget({
    super.key, required this.auhor, required this.track,
    // required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(30),
      padding: const EdgeInsets.all(20),
      height: 130,
      width: double.maxFinite,
      decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(30)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('New Album', style: TextStyle(
            fontSize: 10,
            color: AppColors.white
          ),),
          headingBigTextWidget(text: track, fontSize: 19,),
          Text(auhor,style: TextStyle(
            fontSize: 13,
              color: AppColors.white
          ),),
        ],
      ),
    );
  }
}
