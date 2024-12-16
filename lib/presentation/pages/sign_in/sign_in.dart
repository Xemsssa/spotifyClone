import 'package:flutter/material.dart';
import 'package:spotify_clone/core/configs/utils/app_routes.dart';
import 'package:spotify_clone/presentation/pages/sign_in/widget/text_small_widget.dart';

import '../../../common/widget/button.dart';
import '../../../core/configs/assets/app_images.dart';
import '../../../core/configs/theme/app_colors.dart';
import '../intro/widget/heading_big_text_widget.dart';
import '../intro/widget/heading_text_widget.dart';
import '../register/widget/text_input_widget.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBackground3,
      appBar: AppBar(
          backgroundColor: AppColors.darkBackground3,
          centerTitle: true,
          // title: SvgPicture.asset(AppVectors.smalllogo)
          title: Image.asset(AppImages.smalllogo)
      ),
      body: Center(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Text("register"),
            const SizedBox(height: 20,),

            Column(
              children: [
                const headingBigTextWidget(text: 'Sign In'),

                const SizedBox(height: 20,),

                // const textSmallWidget(text1: 'If You Need Any Support ', text2: 'Click here', colorBg: AppColors.primary),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    textSmallWidget(text2: 'If You Need Any Support ', colorBg: AppColors.grey,),
                    textSmallWidget(text2: 'Click here', colorBg: Colors.blueAccent),
                  ],
                ),

                const SizedBox(height: 30,),

                const textInputWidget(text: "Enter Username Or Email",),

                const SizedBox(height: 20,),

                const textInputWidget(text: "Password",),

                Container(
                  width: double.maxFinite,
                  alignment: Alignment.centerLeft,
                  child: const headingTextWidget(text: "Recovery Password",
                  ),
                ),

                // Spacer(),

                Container(
                    width: double.maxFinite,
                    child: const Center(child: Button(text: 'Sign in', colorBack: AppColors.primary,))),

                const SizedBox(height: 20,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Divider(
                      color: AppColors.primary,
                    ),Text('Or'),Divider(
                      color: AppColors.primary,
                    ),
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

                    const SizedBox(width: 40,),

                    Image.asset(AppImages.apple,
                    width: 20,
                    height: 20,)
                  ],
                ),

                const SizedBox(height: 20,),

                // textSmallWidget(text1: "Not A Member ? ", text2: 'Register now', colorBg: Colors.blueAccent)

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const textSmallWidget(text2: "Not A Member ? ", colorBg: AppColors.grey,),
                    GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, AppRoutes.registerScreen);
                        },
                        child: const textSmallWidget(text2: 'Register now', colorBg: Colors.blueAccent)),
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
