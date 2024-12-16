import 'package:flutter/material.dart';
import 'package:spotify_clone/presentation/pages/chooseRegisterOrSignUpScreen/choose_Register_Or_Sign_Up_Screen.dart';
import 'package:spotify_clone/presentation/pages/choose_mode/choose_mode_screen.dart';
import 'package:spotify_clone/presentation/pages/register/register_screen.dart';
import 'package:spotify_clone/presentation/pages/sign_in/sign_in.dart';

import '../../../core/configs/assets/app_images.dart';
import '../../../core/configs/theme/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  void onSelectedIndex(int index) {
    setState(() {
      // print("tap");
      selectedIndex = index;
    });
  }

  List list = [
    SignIn(),
    RegisterScreen(),
    ChooseModeScreen(),
    ChooseRegisterOrSignUpScreen()
  ];

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
      body: list[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.darkBackground3,
        currentIndex: selectedIndex,
        onTap: onSelectedIndex,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,

        items: [
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/Vector3.png'),
              activeIcon: Image.asset('assets/images/Vector3.png',
              color: AppColors.primary,),
              label: "label"),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/Vector4.png'),
              activeIcon: Image.asset('assets/images/Vector4.png',
                color: AppColors.primary,),
              label: "label"),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/Heart 1.png'),
              activeIcon: Image.asset('assets/images/Heart 1.png',
                color: AppColors.primary,),
              label: "label"),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/Profile 1.png'),
              activeIcon: Image.asset('assets/images/Profile 1.png',
                color: AppColors.primary,),
              label: "label"),
        ],
      ),
    );
  }
}
