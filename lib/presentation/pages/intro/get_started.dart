import 'package:flutter/material.dart';
import 'package:spotify_clone/core/configs/assets/app_images.dart';
import 'package:spotify_clone/core/configs/theme/app_colors.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.introBg)
              )
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            AppImages.logo
                        ),
                        // fit: BoxFit.cove
                      )
                    ),),
                ),

                Spacer(),
                Text('Enjoy Listening To Music', style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),),
                Container(
                  padding: EdgeInsets.all(20),
                  width: double.maxFinite,

                  child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis enim purus sed phasellus. Cursus ornare id scelerisque aliquam.',
                    style: TextStyle(
                        fontSize: 17,
                        color: AppColors.midGrey,
                        fontWeight: FontWeight.w500,
                    ),),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Get(child: Text('Get Started')),
                )
              ],
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.15)
          )
        ],
      )
    );
  }
}
