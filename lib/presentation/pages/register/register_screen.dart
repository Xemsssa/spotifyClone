import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/core/configs/assets/app_images.dart';
import 'package:spotify_clone/core/configs/assets/app_vector.dart';
import 'package:spotify_clone/core/configs/theme/app_colors.dart';
import 'package:spotify_clone/core/configs/utils/app_routes.dart';
import 'package:spotify_clone/presentation/pages/intro/widget/heading_big_text_widget.dart';
import 'package:spotify_clone/presentation/pages/register/widget/heading_logo_widget.dart';
import 'package:spotify_clone/presentation/pages/register/widget/text_input_widget.dart';

import '../../../common/widget/button.dart';
import '../intro/widget/heading_text_widget.dart';
import '../sign_in/widget/text_small_widget.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBackground3,
      appBar: AppBar(
          backgroundColor: AppColors.darkBackground3,
          centerTitle: true,
          leading: null,
          // title: SvgPicture.asset(AppVectors.smalllogo)
          title: Image.asset(AppImages.smalllogo)
      ),
      // appBar: HeadingLogoWidget(),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Text("register"),
            const SizedBox(height: 20,),
            
            Column(
              children: [
                const headingBigTextWidget(text: 'Register',fontSize: 30),
                const SizedBox(height: 20,),

                // const Row(
                //   // crossAxisAlignment: CrossAxisAlignment.center,
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Text('If You Need Any Support '),
                //     Text('Click here',style: TextStyle(
                //       color: AppColors.primary
                //     ),),
                //   ],
                // ),
                Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                    textSmallWidget(text2: "If You Need Any Support ", colorBg: AppColors.grey,),
                    textSmallWidget(text2: 'Click here', colorBg: Colors.blueAccent),
                  ],
                ),

                const SizedBox(height: 30,),

                const textInputWidget(text: "Full Name",),
                
                const SizedBox(height: 20,),

                const textInputWidget(text: "Enter Email",),

                const SizedBox(height: 20,),

                const textInputWidget(text: "Password",),
                const SizedBox(height: 20,),

                Container(
                    width: double.maxFinite,
                    child: const Center(child: Button(text: 'Create Account', colorBack: AppColors.primary,))),

                const SizedBox(height: 20,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Divider(),Text('Or'),Divider(),
                  ],
                ),
                const SizedBox(height: 20,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppImages.google,
                      height: 20,
                      width: 20,
                    ),

                    SizedBox(width: 40,),
                    Image.asset(AppImages.apple,
                      width: 20,
                      height: 20,)
                  ],
                ),

                const SizedBox(height: 20,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    textSmallWidget(text2: "Do You Have An Account ? ", colorBg: AppColors.grey,),
                    GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, AppRoutes.signInScreen);
                        },
                        child: textSmallWidget(text2: 'Sign In', colorBg: Colors.blueAccent)),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}