import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/core/configs/assets/app_images.dart';
import 'package:spotify_clone/core/configs/theme/app_colors.dart';
import 'package:spotify_clone/presentation/pages/intro/widget/heading_big_text_widget.dart';
import 'package:spotify_clone/presentation/pages/intro/widget/heading_text_widget.dart';

class MusicScreen extends StatelessWidget {
  const MusicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBackground3,
      appBar: AppBar(
        centerTitle: true,
        // actionsIconTheme: AppColors.lightgrey5,
        backgroundColor: AppColors.darkBackground3,
        title: Text('Now playing',style: TextStyle(
          color: AppColors.lightgrey5
        ),),
      ),
      body: Column(
        // crossAxisAlignmentnt: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 370,
              width: 335,
              decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(AppImages.rectangle1),
              ),
              )
            ),
          ),

          SizedBox(height: 20,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    headingBigTextWidget(text: "Bad Guy", fontSize: 22),
                    headingTextWidget(text: 'Billie Eilish')
                  ],
                ),
                Image.asset(AppImages.heart)
              ],
            ),
          ),

          SizedBox(height: 40,),

          Slider(
            inactiveColor: AppColors.lightgrey7,
            activeColor: AppColors.lightgrey6,
            min: 0,
            max: 4.02,
            value: 2.25, onChanged: (double value) {  },
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("2:25", style: TextStyle(
                  color: AppColors.lightgrey3
                ),),
                Text("4:02", style: TextStyle(
                    color: AppColors.lightgrey3
                ),),
              ],
            ),
          ),
          
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Container(
                //   height: 20,
                //   width: 20,
                //   decoration: BoxDecoration(
                //     color: Colors.red,
                //     image: DecorationImage(
                //       image: AssetImage(AppImages.previous,
                //       ),
                //     )
                //   ),
                // ),
                
                Image.asset(AppImages.shuffle),
                Image.asset(AppImages.previous),
                Container(
                  padding: EdgeInsets.all(30),
                  height: 60,
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage(AppImages.pauseBnt)
                    )
                  )),
                Image.asset(AppImages.next),
                Image.asset(AppImages.shuffle),

              ],
            ),
          )
        ],
      ),
    );
  }
}
