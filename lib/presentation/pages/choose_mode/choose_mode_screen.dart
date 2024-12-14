import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_clone/presentation/pages/choose_mode/bloc/theme.cubit.dart';

import '../../../common/widget/button.dart';
import '../../../core/configs/assets/app_images.dart';
import '../../../core/configs/theme/app_colors.dart';
import '../../../core/configs/utils/app_routes.dart';
import '../chooseRegisterOrSignUpScreen/choose_Register_Or_Sign_Up_Screen.dart';
import '../chooseRegisterOrSignUpScreen/choose_Register_Or_Sign_Up_Screen.dart';
import '../intro/get_started_screen.dart';
import '../intro/widget/heading.dart';
import '../intro/widget/headingWidget.dart';
class ChooseModeScreen extends StatelessWidget {
  const ChooseModeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AppImages.chooseBg)
                  )
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: HeadingWidget(),
                  ),

                  const Spacer(),

                  const Text('Choose mode', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22
                  ),),
                  const SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap:() {
                          context.read<ThemeCubit>().updateTheme(ThemeMode.dark);
                        },
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(40),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.darkGrey,
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/Moon.png'
                                  )
                                )
                              ),
                            ),
                            const SizedBox(height: 20,),
                            const Text('Dark Mode')
                          ],
                        ),
                      ),
                      const SizedBox(width: 80,),
                      GestureDetector(
                        onTap: (){
                          context.read<ThemeCubit>().updateTheme(ThemeMode.light);
                        },
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(40),
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.darkGrey,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/Sun 1.png'
                                      )
                                  )
                              ),
                            ),
                            const SizedBox(height: 20,),
                            const Text('Light Mode')
                          ],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 40,),

                  GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, AppRoutes.chooseRegisterOrSignUpScreen);
                        // Navigator.pushReplacement(context,  MaterialPageRoute(builder: (BuildContext context) => const GetStartedScreen()));
                        // Navigator.pushReplacement(context,  MaterialPageRoute(builder: (BuildContext context) => const GetStartedScreen()));
                        // Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => const ChooseRegisterOrSignUpScreen()));
                      },
                      child: const Button(text: "Continue!",))
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
