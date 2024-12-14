import 'package:flutter/material.dart';
import 'package:spotify_clone/core/configs/assets/app_images.dart';
import 'package:spotify_clone/core/configs/theme/app_colors.dart';
import 'package:spotify_clone/core/configs/utils/app_routes.dart';
import 'package:spotify_clone/presentation/pages/intro/widget/headingWidget.dart';

import '../../../common/widget/button.dart';
import 'widget/heading.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

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
                  child: HeadingWidget(),
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
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),

                SizedBox(height: 20,),

                GestureDetector(
                    onTap: (){
                      print('tap');
                      // Navigator.pushNamed(context, "/get_starteds");
                      Navigator.pushNamed(context, AppRoutes.chooseModeScreen);
                      // Navigator.pushNamed(context, );
                    },
                    child: Button(text: "Get Started!",))
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

