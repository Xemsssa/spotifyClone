// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/core/configs/assets/app_vector.dart';
import 'package:spotify_clone/presentation/pages/intro/get_started_screen.dart';

import '../../../core/configs/assets/app_images.dart';
import '../../../core/configs/utils/app_routes.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    redirect();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // child: Image.asset('assets/images/Spotify_Full_Logo_RGB_Green.png'),         // child: SvgPicture.asset(AppV),
        child: Container(
          width: 220,
          decoration: const BoxDecoration(
            image: DecorationImage(
              // image: AssetImage('assets/images/Spotify_Full_Logo_RGB_Green.png'),
              image: AssetImage(AppImages.logo)
            )
          ),
        ),
      ),
    );
  }

  Future<void> redirect() async{
    await Future.delayed(const Duration(seconds: 2));
    
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => const GetStartedScreen()));
    // Navigator.pushNamed(context, '/get_started' );
    // Navigator.pushNamed(context, AppRoutes.getStarted );
  }
}
