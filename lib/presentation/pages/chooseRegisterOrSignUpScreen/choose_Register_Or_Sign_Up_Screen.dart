import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spotify_clone/common/widget/button.dart';
import 'package:spotify_clone/core/configs/utils/app_routes.dart';
import 'package:spotify_clone/presentation/pages/intro/widget/headingWidget.dart';
import 'package:spotify_clone/presentation/pages/intro/widget/heading_text_widget.dart';

import '../../../core/configs/theme/app_colors.dart';
import '../intro/widget/heading.dart';
import '../intro/widget/heading_big_text_widget.dart';

class ChooseRegisterOrSignUpScreen extends StatelessWidget {
  const ChooseRegisterOrSignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBackground2,
      appBar: AppBar(
          backgroundColor: AppColors.darkBackground2
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
            // Center(child:
            Column(
              children: [
                HeadingWidget(),
                headingBigTextWidget(text: 'Enjoy Listening To Music'),
                headingTextWidget(text: 'Spotify is a proprietary Swedish audio streaming and media services provider'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   GestureDetector(
                       onTap:(){Navigator.pushNamed(context, AppRoutes.registerScreen);},
                       child: Button(text: 'Register',colorBack: AppColors.primary,)
                   ),
                   SizedBox(width: 20,),
                    GestureDetector(
                        onTap:(){Navigator.pushNamed(context, AppRoutes.signInScreen);},
                        child: Button(text: 'Sign In',colorBack: Colors.transparent,)
                    ),
                  ],
                )
              ],
            ),
    // )
        ],
      ),
    );
  }
}
