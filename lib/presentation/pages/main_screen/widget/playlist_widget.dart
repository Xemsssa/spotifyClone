import 'package:flutter/material.dart';
import 'package:spotify_clone/core/configs/assets/app_images.dart';
import 'package:spotify_clone/core/configs/theme/app_colors.dart';
import 'package:spotify_clone/presentation/pages/intro/widget/heading_big_text_widget.dart';
import 'package:spotify_clone/presentation/pages/main_screen/widget/small_play_button_widget.dart';
import 'package:spotify_clone/presentation/pages/sign_in/widget/text_small_widget.dart';

class PlaylistWidget extends StatelessWidget {
  const PlaylistWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child:SmallPlayButtonWidget(),
              ),

              SizedBox(width: 30,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  headingBigTextWidget(text: 'As It Was', fontSize: 16),
                  textSmallWidget(text2: "Harry Styles", colorBg: AppColors.lightgrey3),
                  // textSmallWidget(text2: "Harry Styles", colorBg: AppColors.lightgrey3),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Image.asset(AppImages.heart),
              const SizedBox(width: 30,),
              const textSmallWidget(text2: '5.33', colorBg: AppColors.lightgrey4),
            ],
          )


        ],
      ),
    );
  }
}

