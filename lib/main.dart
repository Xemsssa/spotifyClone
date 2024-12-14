import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:spotify_clone/core/configs/utils/app_routes.dart';
import 'package:spotify_clone/presentation/pages/chooseRegisterOrSignUpScreen/choose_Register_Or_Sign_Up_Screen.dart';
import 'package:spotify_clone/presentation/pages/choose_mode/bloc/theme.cubit.dart';
// import 'package:spotify_clone/lib/core/configs/theme/app_theme.dart';
import 'package:spotify_clone/presentation/pages/choose_mode/choose_mode_screen.dart';
import 'package:spotify_clone/presentation/pages/intro/get_started_screen.dart';
import 'package:spotify_clone/presentation/pages/splash/splash.dart';

import 'core/configs/theme/app_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getApplicationDocumentsDirectory(),
  );
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ThemeCubit())
      ],
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, mode) => MaterialApp(
          title: 'Flutter Spotify',
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: mode,
          // home: Splash(),
          // home: ChooseModeScreen(),
          home: const ChooseRegisterOrSignUpScreen(),
          // home: Splash(),
        
          routes: {
            // '/get_started':(context) => const GetStartedScreen(),
            AppRoutes.getStartedScreen:(context) => const GetStartedScreen(),
            // '/choose_mode_screen':(context)=> const ChooseModeScreen(),
            AppRoutes.chooseModeScreen:(context)=> const ChooseModeScreen(),
            AppRoutes.chooseRegisterOrSignUpScreen:(context)=> const ChooseRegisterOrSignUpScreen()
          },
        ),
      ),
    );
  }
}
